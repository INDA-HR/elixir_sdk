# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Api.MappingCareerCauseways do
  @moduledoc """
  API calls for all endpoints tagged `MappingCareerCauseways`.
  """

  alias inda_hr.Connection
  import inda_hr.RequestBuilder

  @doc """
  Career Recommendation
  This method provides an ordered list of recommended jobs transition, given an origin occupation. First, the algorithm  calculates the ESCO occupation that best matches the input job title. The ESCO match is provided  only if the match score is higher than `min_score`.  Viability, salary, and automation risk define the transition recommendations, and the user can select them by the *TransitionType* field: - `viable`: the algorithm recommends all similar occupations, ordered by similarity. No other considerations are made. - `desirable`: the algorithm recommends all similar occupations that offer comparable or higher pay levels. - `safe_desirable`: the algorithm recommends the subset of roles that will likely reduce    a worker's exposure to automation risk among the `desirable` transition.   - `strictly_safe_desirable`: the algorithm recommends among the `desirable` transition, the subset of roles with    lower automation risk and higher prevalence of bottleneck tasks.

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `career_transition_request` (CareerTransitionRequest): 
  - `opts` (keyword): Optional parameters
    - `:dst_lang` (String.t): Output language.
    - `:min_score` (float()): Minimum similarity score for ESCO mapping.

  ### Returns

  - `{:ok, inda_hr.Model.TransitionRecommendations.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec career_recommendation_post(Tesla.Env.client, inda_hr.Model.CareerTransitionRequest.t, keyword()) :: {:ok, inda_hr.Model.TransitionRecommendations.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def career_recommendation_post(connection, career_transition_request, opts \\ []) do
    optional_params = %{
      :dst_lang => :query,
      :min_score => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/resume/career/occupation/recommendation/")
      |> add_param(:body, :body, career_transition_request)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.TransitionRecommendations{}},
      {500, %inda_hr.Model.ErrorModel{}},
      {503, %inda_hr.Model.ErrorModel{}},
      {400, %inda_hr.Model.ErrorModel{}},
      {422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Occupation Activities Comparison
  This method provides a detailed comparison of the principal activities of the origin and destination occupation.  For each activity, the method shows the gap between the two occupations.   The activity comparison is based n the skill ESCO level. It ranges from one to three,  and it is related to the specificity of the activity.

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `work_activity_comparison_request` (WorkActivityComparisonRequest): 
  - `opts` (keyword): Optional parameters
    - `:dst_lang` (String.t): Output language.
    - `:min_score` (float()): Minimum similarity score for ESCO mapping.

  ### Returns

  - `{:ok, inda_hr.Model.WorkActivityComparison.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec occupation_activities_comparison_post(Tesla.Env.client, inda_hr.Model.WorkActivityComparisonRequest.t, keyword()) :: {:ok, inda_hr.Model.WorkActivityComparison.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def occupation_activities_comparison_post(connection, work_activity_comparison_request, opts \\ []) do
    optional_params = %{
      :dst_lang => :query,
      :min_score => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/resume/career/occupation/activities/comparison/")
      |> add_param(:body, :body, work_activity_comparison_request)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.WorkActivityComparison{}},
      {500, %inda_hr.Model.ErrorModel{}},
      {503, %inda_hr.Model.ErrorModel{}},
      {400, %inda_hr.Model.ErrorModel{}},
      {422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Occupation Skill Comparison
  This method provides a detailed comparison of the skills of the origin and destination occupations.  Such comparison helps compare the skill gaps among the occupations. Each skill of the origin occupation  is mapped to the most similar skill of the destination occupation. The mapping is one to one.   Skills are split in: - `essential`: only the most relevant skills for such occupation are considered according to ESCO Classification; - `optional`: both essential and optional skills are considered according to ESCO Classification.

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `occupation_skills_comparison_request` (OccupationSkillsComparisonRequest): 
  - `opts` (keyword): Optional parameters
    - `:dst_lang` (String.t): Output language.
    - `:min_score` (float()): Minimum similarity score for ESCO mapping.

  ### Returns

  - `{:ok, inda_hr.Model.OccupationsSkillsComparison.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec occupation_skill_comparison_post(Tesla.Env.client, inda_hr.Model.OccupationSkillsComparisonRequest.t, keyword()) :: {:ok, inda_hr.Model.OccupationsSkillsComparison.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def occupation_skill_comparison_post(connection, occupation_skills_comparison_request, opts \\ []) do
    optional_params = %{
      :dst_lang => :query,
      :min_score => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/resume/career/occupation/skills/comparison/")
      |> add_param(:body, :body, occupation_skills_comparison_request)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.OccupationsSkillsComparison{}},
      {500, %inda_hr.Model.ErrorModel{}},
      {503, %inda_hr.Model.ErrorModel{}},
      {400, %inda_hr.Model.ErrorModel{}},
      {422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Upskilling simulator
  Learning and getting new skills usually leads to new job opportunities. Given an origin occupation and a list of acquired skills,  this method provides an updated ordered list of recommended jobs transition based on your occupation skills and your acquired skills.  First, the algorithm  calculates the ESCO occupation that best matches the input job title and ESCO skills that best fits the input skills list.  The ESCO match is provided  only if the match score is higher than `min_score`.    Viability, salary, and automation risk define the transition recommendations, and the user can select them by the *TransitionType* field: - `viable`: the algorithm recommends all similar occupations, ordered by similarity. No other considerations are made; - `desirable`: the algorithm recommends all similar occupations that offer comparable or higher pay levels; - `safe_desirable`: the algorithm recommends the subset of roles that will likely reduce     a worker's exposure to automation risk among the `desirable` transition;   - `strictly_safe_desirable`: the algorithm recommends among the `desirable` transition, the subset of roles with     lower automation risk and higher prevalence of bottleneck tasks.

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `upskilling_request` (UpskillingRequest): 
  - `opts` (keyword): Optional parameters
    - `:dst_lang` (String.t): Output language.
    - `:min_score` (float()): Minimum similarity score for ESCO mapping.

  ### Returns

  - `{:ok, inda_hr.Model.Upskilling.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec upskilling_simulator_post(Tesla.Env.client, inda_hr.Model.UpskillingRequest.t, keyword()) :: {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.Upskilling.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def upskilling_simulator_post(connection, upskilling_request, opts \\ []) do
    optional_params = %{
      :dst_lang => :query,
      :min_score => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/resume/career/simulator/upskilling/")
      |> add_param(:body, :body, upskilling_request)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.Upskilling{}},
      {500, %inda_hr.Model.ErrorModel{}},
      {503, %inda_hr.Model.ErrorModel{}},
      {400, %inda_hr.Model.ErrorModel{}},
      {422, %inda_hr.Model.HttpValidationError{}}
    ])
  end
end
