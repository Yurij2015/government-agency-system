<?php

namespace app\module\adminmodule\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\module\adminmodule\models\Newscategory;

/**
 * NewscategorySearch represents the model behind the search form of `app\module\adminmodule\models\Newscategory`.
 */
class NewscategorySearch extends Newscategory
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idnewscategory'], 'integer'],
            [['name', 'description'], 'safe'],
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
        $query = Newscategory::find();

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
            'idnewscategory' => $this->idnewscategory,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'description', $this->description]);

        return $dataProvider;
    }
}
