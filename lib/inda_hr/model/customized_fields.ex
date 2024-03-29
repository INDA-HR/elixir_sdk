# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.CustomizedFields do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :DocType,
    :Indexname,
    :Successful,
    :Errors
  ]

  @type t :: %__MODULE__{
    :DocType => String.t | nil,
    :Indexname => String.t,
    :Successful => boolean(),
    :Errors => map()
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.CustomizedFields do
  def decode(value, _options) do
    value
  end
end

