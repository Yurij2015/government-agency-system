<?php

namespace app\module\adminmodule\models;

use Yii;

/**
 * This is the model class for table "news".
 *
 * @property int $idnews
 * @property string $newsname
 * @property string|null $content
 * @property int|null $created_at
 * @property int|null $updated_at
 * @property int|null $updated_by
 * @property int|null $created_by
 * @property int $newscategory_idnewscategory
 *
 * @property User $createdBy
 * @property Newscategory $newscategoryIdnewscategory
 * @property User $updatedBy
 */
class News extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'news';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['newsname', 'newscategory_idnewscategory'], 'required'],
            [['content'], 'string'],
            [['created_at', 'updated_at', 'updated_by', 'created_by', 'newscategory_idnewscategory'], 'integer'],
            [['newsname'], 'string', 'max' => 88],
            [['created_by'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['created_by' => 'id']],
            [['newscategory_idnewscategory'], 'exist', 'skipOnError' => true, 'targetClass' => Newscategory::className(), 'targetAttribute' => ['newscategory_idnewscategory' => 'idnewscategory']],
            [['updated_by'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['updated_by' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'idnews' => Yii::t('message', 'Idnews'),
            'newsname' => Yii::t('message', 'Newsname'),
            'content' => Yii::t('message', 'Content'),
            'created_at' => Yii::t('message', 'Created At'),
            'updated_at' => Yii::t('message', 'Updated At'),
            'updated_by' => Yii::t('message', 'Updated By'),
            'created_by' => Yii::t('message', 'Created By'),
            'newscategory_idnewscategory' => Yii::t('message', 'Newscategory Idnewscategory'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCreatedBy()
    {
        return $this->hasOne(User::className(), ['id' => 'created_by']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getNewscategoryIdnewscategory()
    {
        return $this->hasOne(Newscategory::className(), ['idnewscategory' => 'newscategory_idnewscategory']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUpdatedBy()
    {
        return $this->hasOne(User::className(), ['id' => 'updated_by']);
    }
}
