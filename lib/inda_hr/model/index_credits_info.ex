# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.IndexCreditsInfo do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Indexname,
    :Suite,
    :History
  ]

  @type t :: %__MODULE__{
    :Indexname => String.t,
    :Suite => inda_hr.Model.SuiteResponse.t | nil,
    :History => inda_hr.Model.History.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.IndexCreditsInfo do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Suite, :struct, inda_hr.Model.SuiteResponse, options)
    |> deserialize(:History, :struct, inda_hr.Model.History, options)
  end
end

