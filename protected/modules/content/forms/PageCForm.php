<?

Yii::app()->clientScript->registerScriptFile('/js/content/page/form.js');

if (!$this->model->isNewRecord)
{
    $this->model->sections_ids = PageSectionRel::model()->getSectionsIds($this->model->id);

}

return array(
    'enctype'    => 'multipart/form-data',
    'activeForm' => array(
        'id'            => 'page-form',
        'clientOptions' => array('validateOnSubmit' => false, 'validateOnType' => false),
        'enableAjaxValidation' => false
    ),
    'elements' => array(
        'title'    => array(
            'type' => 'text'
        ),
        'status' => array(
            'type'  => 'dropdownlist',
            'items' => Page::$status_options
        ),
        'text' => array(
            'type'      => 'application.extensions.pageCEditor.elRTE',
            'attribute' => 'text'
        ),
        'sections_ids' => array(
            'type'  => 'application.components.formElements.MultiSelect.MultiSelect',
            'items' => PageSection::model()->optionsTree(),
            'model' => $this->model
        ),
        'tags' => array(
            'type'  => 'TagsInput',
            'label' => t('Теги')
        ),
        'comments_denied' => array(
            'type' => 'checkbox'
        )
    ),
    'buttons'              => array(
        'submit' => array(
            'type'  => 'submit',
            'value' => t('сохранить')
        )
    )
);
