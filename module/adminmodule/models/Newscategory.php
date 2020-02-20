<?php

namespace app\module\adminmodule\models;

use Yii;

/**
 * This is the model class for table "newscategory".
 *
 * @property int $idnewscategory
 * @property string $name
 * @property string|null $description
 *
 * @property News[] $news
 */
class Newscategory extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'newscategory';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['name'], 'string', 'max' => 45],
            [['description'], 'string', 'max' => 250],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'idnewscategory' => Yii::t('message', 'Idnewscategory'),
            'name' => Yii::t('message', 'NameK'),
            'description' => Yii::t('message', 'Description'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getNews()
    {
        return $this->hasMany(News::className(), ['newscategory_idnewscategory' => 'idnewscategory']);
    }
}
