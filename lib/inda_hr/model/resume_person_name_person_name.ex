# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.ResumePersonNamePersonName do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Prefix",
    :"GivenName",
    :"MiddleNames",
    :"FamilyName",
    :"Suffix",
    :"FormattedName"
  ]

  @type t :: %__MODULE__{
    :"Prefix" => inda_hr.Model.ResumePersonNamePrefix.t | nil,
    :"GivenName" => inda_hr.Model.BaseModelsName.t | nil,
    :"MiddleNames" => [inda_hr.Model.BaseModelsName.t] | nil,
    :"FamilyName" => inda_hr.Model.BaseModelsName.t | nil,
    :"Suffix" => inda_hr.Model.ResumePersonNameSuffix.t | nil,
    :"FormattedName" => inda_hr.Model.BaseModelsName.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ResumePersonNamePersonName do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Prefix", :struct, inda_hr.Model.ResumePersonNamePrefix, options)
    |> deserialize(:"GivenName", :struct, inda_hr.Model.BaseModelsName, options)
    |> deserialize(:"MiddleNames", :list, inda_hr.Model.BaseModelsName, options)
    |> deserialize(:"FamilyName", :struct, inda_hr.Model.BaseModelsName, options)
    |> deserialize(:"Suffix", :struct, inda_hr.Model.ResumePersonNameSuffix, options)
    |> deserialize(:"FormattedName", :struct, inda_hr.Model.BaseModelsName, options)
  end
end
