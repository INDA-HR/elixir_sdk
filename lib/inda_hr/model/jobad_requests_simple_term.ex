# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.JobadRequestsSimpleTerm do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Term",
    :"Exclude"
  ]

  @type t :: %__MODULE__{
    :"Term" => String.t,
    :"Exclude" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.JobadRequestsSimpleTerm do
  def decode(value, _options) do
    value
  end
end

