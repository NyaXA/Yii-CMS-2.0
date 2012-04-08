(function($)
{
    $.widget('CmsUI.grid', $.CmsUI.gridBase, {
        _version:0.1,

        // default options
        options:{
            mass_removal:false,
            filter_hint:false
        },
        parent:function()
        {
            return $.CmsUI.gridBase.prototype;
        },
        _create:function()
        {
            this.parent()._create.call(this);
        },
        _initHandlers:function(e, data)
        {
            this.parent()._initHandlers.call(this);

            var self = this;
            self._initSwitchPageSize();
            self._initFilters();
            self._initPageSizer();

            if (self.options.mass_removal)
            {
                self._initMassRemoval();
            }
        },
        _initPageSizer:function()
        {
            if ($('.pager_select').length == 0)
            {
                return;
            }

            var self = this;
            if ($.fn.chosen != undefined)
            {
                $('.pager_select', self.element).chosen({
                    'allow_single_deselect':false
                });
            }
        },
        _initMassRemoval:function()
        {
            var self = this;
            $('#mass_remove_button').click(function()
            {
                var $checkboxes = $('.object_checkbox:checked', self.element);

                if ($checkboxes.length > 0)
                {
                    if (!confirm('Вы уверены, что хотите удалить отмеченные элементы?'))
                    {
                        return false;
                    }

                    blockUI();
                    var grid_id = self.element.attr('id');

                    $checkboxes.each(function()
                    {
                        var action = $(this).closest('tr').find('.delete').attr('href');

                        $.fn.yiiGridView.update(grid_id, {
                            type:'POST',
                            url:action,
                            success:null
                        });
                    });

                    $(document).ajaxStop(function()
                    {
                        unblockUI();
                        $.fn.yiiGridView.update(grid_id);
                        $(this).unbind('ajaxStop');
                    });
                }
                else
                {
                    showMsg('Отметьте элементы!');
                }
            });
        },
        _initSwitchPageSize:function()
        {
            var self = this;
            $('.pager_select', self.element).change(function()
            {
                location.href = '?per_page=' + $(this).val();
            });

        },
        _initFilters:function()
        {
            var self = this;

            var inputs = $('.filters input, .filters select', self.element), //TODO: what with dropdownlist???
                inputs_count = inputs.length;

            if (inputs_count == 0)
            {
                return false;
            }

            var show_filters = false;
            inputs.each(function()
            {
                if ($(this).val())
                {
                    show_filters = true;
                }
            });
            $('.filters:first', self.element)[show_filters ? 'slideDown' : 'slideUp']();

            $('th:last', self.element).each(function()
            {
                if ($(this).html() != '&nbsp;')
                {
                    return true;
                }

                var html = $('<div>').css({width:'80px'});
                if (self.options.filter_hint)
                {
                    var a = $("<a href='#' class='hint' style='float:left'>").click(function()
                    {
                        hint(self.options.filter_hint);
                        return false;
                    });
                    html.append(a);
                }
                html.append($("<a href='#' class='filters_link'>фильтры</a>"));
                $(this).html(html);
            });

            $('.filters_link', self.element).click(function()
            {
                $('.filters', self.element).slideToggle();
                return false;
            });

            $('.filters > td:last', self.element).each(function()
            {
                if ($(this).html() == '&nbsp;')
                {
                    $(this).html("<a href='' class='filters_clear_link' style='color:#A00'>очистить</a>");
                }
            });

            $('.filters_clear_link', self.element).click(function()
            {
                inputs.val('');
                self.update();
                return false;
            });

        }
    })
    ;
})
    (jQuery);


