<?php

namespace app\module\adminmodule\models;

use Yii;

/**
 * This is the model class for table "feedback".
 *
 * @property int $idfeedback
 * @property int $user_id
 * @property string|null $content
 *
 * @property User $user
 */
class Feedback extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'feedback';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idfeedback', 'user_id'], 'required'],
            [['idfeedback', 'user_id'], 'integer'],
            [['content'], 'string', 'max' => 245],
            [['idfeedback'], 'unique'],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'idfeedback' => Yii::t('message', 'Idfeedback'),
            'user_id' => Yii::t('message', 'User ID'),
            'content' => Yii::t('message', 'Content'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }
}
