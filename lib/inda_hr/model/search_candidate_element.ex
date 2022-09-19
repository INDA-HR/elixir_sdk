# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.SearchCandidateElement do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Score",
    :"Rank",
    :"ID",
    :"Data"
  ]

  @type t :: %__MODULE__{
    :"Score" => float(),
    :"Rank" => integer(),
    :"ID" => String.t,
    :"Data" => inda_hr.Model.ResumeCommonMinimalData.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.SearchCandidateElement do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Data", :struct, inda_hr.Model.ResumeCommonMinimalData, options)
  end
end

