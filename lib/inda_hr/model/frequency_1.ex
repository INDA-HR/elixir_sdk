# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.Frequency1 do
  @moduledoc """
  The percentage or a range of percentages of the time of the week in which the job is remote.
  """

  @derive [Poison.Encoder]
  defstruct [
    :Value,
    :Range
  ]

  @type t :: %__MODULE__{
    :Value => float() | nil,
    :Range => inda_hr.Model.Range.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Frequency1 do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Range, :struct, inda_hr.Model.Range, options)
  end
end

