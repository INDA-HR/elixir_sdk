# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.OptionalEscoJobtitleMatchCategorized do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Code",
    :"PreferredLabel",
    :"Description",
    :"Language",
    :"Score",
    :"OccupationHierarchy",
    :"Industries",
    :"JobFunctions"
  ]

  @type t :: %__MODULE__{
    :"Code" => String.t | nil,
    :"PreferredLabel" => String.t | nil,
    :"Description" => String.t | nil,
    :"Language" => String.t | nil,
    :"Score" => float() | nil,
    :"OccupationHierarchy" => inda_hr.Model.OccupationHierarchy.t | nil,
    :"Industries" => [inda_hr.Model.Industries.t] | nil,
    :"JobFunctions" => [inda_hr.Model.Jobfunctions.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalEscoJobtitleMatchCategorized do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"OccupationHierarchy", :struct, inda_hr.Model.OccupationHierarchy, options)
    |> deserialize(:"Industries", :list, inda_hr.Model.Industries, options)
    |> deserialize(:"JobFunctions", :list, inda_hr.Model.Jobfunctions, options)
  end
end

