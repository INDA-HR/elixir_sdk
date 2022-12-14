# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.EntityInput do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"InputLanguage",
    :"OutputLanguage",
    :"EntityType",
    :"AllowedOutputs",
    :"InputString",
    :"Severity"
  ]

  @type t :: %__MODULE__{
    :"InputLanguage" => String.t | nil,
    :"OutputLanguage" => String.t | nil,
    :"EntityType" => String.t,
    :"AllowedOutputs" => [inda_hr.Model.AllowedOutput.t],
    :"InputString" => String.t,
    :"Severity" => float() | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.EntityInput do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"AllowedOutputs", :list, inda_hr.Model.AllowedOutput, options)
  end
end

