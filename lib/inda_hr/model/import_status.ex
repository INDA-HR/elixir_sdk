# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.ImportStatus do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :DocType,
    :Indexname,
    :LastUpdate,
    :Done,
    :Total,
    :Status
  ]

  @type t :: %__MODULE__{
    :DocType => String.t | nil,
    :Indexname => String.t,
    :LastUpdate => DateTime.t,
    :Done => integer(),
    :Total => integer(),
    :Status => String.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ImportStatus do
  def decode(value, _options) do
    value
  end
end

