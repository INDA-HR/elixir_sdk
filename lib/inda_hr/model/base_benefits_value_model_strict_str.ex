# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.BaseBenefitsValueModelStrictStr do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Value
  ]

  @type t :: %__MODULE__{
    :Value => String.t
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.BaseBenefitsValueModelStrictStr do
  def decode(value, _options) do
    value
  end
end
