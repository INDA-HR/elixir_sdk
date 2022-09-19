# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.HiringPipelineStage do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Date",
    :"Description",
    :"Status"
  ]

  @type t :: %__MODULE__{
    :"Date" => DateTime.t,
    :"Description" => String.t | nil,
    :"Status" => String.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.HiringPipelineStage do
  def decode(value, _options) do
    value
  end
end
