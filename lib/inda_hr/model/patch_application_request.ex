# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.PatchApplicationRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Data
  ]

  @type t :: %__MODULE__{
    :Data => inda_hr.Model.ApplicationCommonOptionalData.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.PatchApplicationRequest do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Data, :struct, inda_hr.Model.ApplicationCommonOptionalData, options)
  end
end

