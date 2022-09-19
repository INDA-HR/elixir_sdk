# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.EducationExperiencesSummary do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"EducationExperiencesCount",
    :"EducationExperiencesAverageDuration",
    :"EducationExperiencesTotalDuration",
    :"HighestEducationTitle",
    :"HighestEducationLevelCode"
  ]

  @type t :: %__MODULE__{
    :"EducationExperiencesCount" => inda_hr.Model.ValidatedIntegerValueModel.t | nil,
    :"EducationExperiencesAverageDuration" => inda_hr.Model.ValidatedIntegerValueModel.t | nil,
    :"EducationExperiencesTotalDuration" => inda_hr.Model.ValidatedIntegerValueModel.t | nil,
    :"HighestEducationTitle" => inda_hr.Model.HighestEducationTitle.t | nil,
    :"HighestEducationLevelCode" => inda_hr.Model.ResumeEducationExperiencesEducationLevelCode.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.EducationExperiencesSummary do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"EducationExperiencesCount", :struct, inda_hr.Model.ValidatedIntegerValueModel, options)
    |> deserialize(:"EducationExperiencesAverageDuration", :struct, inda_hr.Model.ValidatedIntegerValueModel, options)
    |> deserialize(:"EducationExperiencesTotalDuration", :struct, inda_hr.Model.ValidatedIntegerValueModel, options)
    |> deserialize(:"HighestEducationTitle", :struct, inda_hr.Model.HighestEducationTitle, options)
    |> deserialize(:"HighestEducationLevelCode", :struct, inda_hr.Model.ResumeEducationExperiencesEducationLevelCode, options)
  end
end
