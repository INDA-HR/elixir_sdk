# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.MinimalPublicAttachments do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :CV
  ]

  @type t :: %__MODULE__{
    :CV => inda_hr.Model.TextFile.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.MinimalPublicAttachments do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:CV, :struct, inda_hr.Model.TextFile, options)
  end
end

