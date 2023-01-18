# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.PublicAttachments do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :CV,
    :Pic,
    :CoverLetter,
    :References,
    :Certifications
  ]

  @type t :: %__MODULE__{
    :CV => inda_hr.Model.TextFile.t,
    :Pic => inda_hr.Model.File.t | nil,
    :CoverLetter => inda_hr.Model.TextFile.t | nil,
    :References => [inda_hr.Model.TextFile.t] | nil,
    :Certifications => [inda_hr.Model.TextFile.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.PublicAttachments do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:CV, :struct, inda_hr.Model.TextFile, options)
    |> deserialize(:Pic, :struct, inda_hr.Model.File, options)
    |> deserialize(:CoverLetter, :struct, inda_hr.Model.TextFile, options)
    |> deserialize(:References, :list, inda_hr.Model.TextFile, options)
    |> deserialize(:Certifications, :list, inda_hr.Model.TextFile, options)
  end
end

