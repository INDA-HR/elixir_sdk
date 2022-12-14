# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.MatchResumeEvidenceDuration do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"WorkExperiencesTotalDuration",
    :"Score"
  ]

  @type t :: %__MODULE__{
    :"WorkExperiencesTotalDuration" => inda_hr.Model.ValidatedIntegerValueModel.t | nil,
    :"Score" => float()
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.MatchResumeEvidenceDuration do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"WorkExperiencesTotalDuration", :struct, inda_hr.Model.ValidatedIntegerValueModel, options)
  end
end

