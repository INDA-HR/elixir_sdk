# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.ResumeCommonPublicMetadata do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Language,
    :CreationDate,
    :LastModified
  ]

  @type t :: %__MODULE__{
    :Language => String.t | nil,
    :CreationDate => DateTime.t,
    :LastModified => DateTime.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ResumeCommonPublicMetadata do
  def decode(value, _options) do
    value
  end
end

