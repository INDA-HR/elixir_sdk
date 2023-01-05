# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.Frequency2 do
  @moduledoc """
  The percentage or a range of percentages of the time of the week in which the job is shift based.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Value",
    :"Range"
  ]

  @type t :: %__MODULE__{
    :"Value" => float(),
    :"Range" => inda_hr.Model.Range.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Frequency2 do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Range", :struct, inda_hr.Model.Range, options)
  end
end
