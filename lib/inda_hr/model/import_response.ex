# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.ImportResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ImportID,
    :Stats,
    :Resumes,
    :Errors
  ]

  @type t :: %__MODULE__{
    :ImportID => String.t,
    :Stats => IndaHr.Model.UploadStats.t,
    :Resumes => [IndaHr.Model.ImportItemResponse.t],
    :Errors => [IndaHr.Model.ImportErrorResponse.t] | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.ImportResponse do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Stats, :struct, IndaHr.Model.UploadStats, options)
    |> deserialize(:Resumes, :list, IndaHr.Model.ImportItemResponse, options)
    |> deserialize(:Errors, :list, IndaHr.Model.ImportErrorResponse, options)
  end
end
