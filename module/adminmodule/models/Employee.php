<?php

namespace app\module\adminmodule\models;

use Yii;

/**
 * This is the model class for table "employee".
 *
 * @property int $idemployee
 * @property string|null $name
 * @property string|null $phone
 * @property int $branch_idbranch
 * @property string|null $detail
 *
 * @property Branch $branchIdbranch
 */
class Employee extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'employee';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['branch_idbranch'], 'required'],
            [['branch_idbranch'], 'integer'],
            [['detail'], 'string'],
            [['name'], 'string', 'max' => 130],
            [['phone'], 'string', 'max' => 15],
            [['branch_idbranch'], 'exist', 'skipOnError' => true, 'targetClass' => Branch::className(), 'targetAttribute' => ['branch_idbranch' => 'idbranch']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'idemployee' => Yii::t('message', 'Idemployee'),
            'name' => Yii::t('message', 'Name'),
            'phone' => Yii::t('message', 'Phone'),
            'branch_idbranch' => Yii::t('message', 'Branch Idbranch'),
            'detail' => Yii::t('message', 'Detail'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBranchIdbranch()
    {
        return $this->hasOne(Branch::className(), ['idbranch' => 'branch_idbranch']);
    }
}
