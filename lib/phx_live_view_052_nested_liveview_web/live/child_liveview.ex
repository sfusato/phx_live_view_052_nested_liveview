defmodule PhxLiveView052NestedLiveviewWeb.ChildLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <p>I'm a child</p>
    """
  end

  def mount(_assigns, socket) do
    {:ok, socket}
  end
end
