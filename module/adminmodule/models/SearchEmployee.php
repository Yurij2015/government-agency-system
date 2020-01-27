<?php

namespace app\module\adminmodule\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\module\adminmodule\models\Employee;

/**
 * SearchEmployee represents the model behind the search form of `app\module\adminmodule\models\Employee`.
 */
class SearchEmployee extends Employee
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idemployee', 'branch_idbranch'], 'integer'],
            [['name', 'phone', 'detail'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Employee::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'idemployee' => $this->idemployee,
            'branch_idbranch' => $this->branch_idbranch,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'phone', $this->phone])
            ->andFilterWhere(['like', 'detail', $this->detail]);

        return $dataProvider;
    }
}
