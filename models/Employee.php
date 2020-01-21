<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "employee".
 *
 * @property int $idemployee
 * @property string|null $name
 * @property string|null $phone
 * @property int $branch_idbranch
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
            'idemployee' => Yii::t('app', 'Idemployee'),
            'name' => Yii::t('app', 'Name'),
            'phone' => Yii::t('app', 'Phone'),
            'branch_idbranch' => Yii::t('app', 'Branch Idbranch'),
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
