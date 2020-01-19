defmodule PhxLiveView052NestedLiveviewWeb.ParentLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <p>I'm the parent. Below is my child:</p>
    <%= Phoenix.LiveView.Helpers.live_render(@socket, PhxLiveView052NestedLiveviewWeb.ChildLive, id: "child") %>
    """
  end

  def mount(_assigns, socket) do
    {:ok, socket}
  end
end
