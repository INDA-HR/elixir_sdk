# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.DateBody do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Begin",
    :"End"
  ]

  @type t :: %__MODULE__{
    :"Begin" => String.t | nil,
    :"End" => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.DateBody do
  def decode(value, _options) do
    value
  end
end

