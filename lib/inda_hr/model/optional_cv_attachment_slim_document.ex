# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.OptionalCvAttachmentSlimDocument do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :CV
  ]

  @type t :: %__MODULE__{
    :CV => IndaHr.Model.SlimDocument.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.OptionalCvAttachmentSlimDocument do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:CV, :struct, IndaHr.Model.SlimDocument, options)
  end
end
