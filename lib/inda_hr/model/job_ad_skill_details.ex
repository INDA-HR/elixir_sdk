# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.JobAdSkillDetails do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ProficiencyLevel",
    :"Category",
    :"Weight"
  ]

  @type t :: %__MODULE__{
    :"ProficiencyLevel" => String.t | nil,
    :"Category" => String.t,
    :"Weight" => float()
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.JobAdSkillDetails do
  def decode(value, _options) do
    value
  end
end

