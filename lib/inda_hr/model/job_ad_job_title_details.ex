# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.JobAdJobTitleDetails do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Weight"
  ]

  @type t :: %__MODULE__{
    :"Weight" => float()
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.JobAdJobTitleDetails do
  def decode(value, _options) do
    value
  end
end
