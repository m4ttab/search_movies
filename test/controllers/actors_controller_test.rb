require 'test_helper'

class ActorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actor = actors(:one)
  end

  test "should get index" do
    get actors_url
    assert_response :success
  end

  test "should get new" do
    get new_actor_url
    assert_response :success
  end

  test "should create actor" do
    assert_difference('Actor.count') do
      post actors_url, params: { actor: { date_of_birth: @actor.date_of_birth, description: @actor.description, film_id: @actor.film_id, name: @actor.name, place_of_birth: @actor.place_of_birth } }
    end

    assert_redirected_to actor_url(Actor.last)
  end

  test "should show actor" do
    get actor_url(@actor)
    assert_response :success
  end

  test "should get edit" do
    get edit_actor_url(@actor)
    assert_response :success
  end

  test "should update actor" do
    patch actor_url(@actor), params: { actor: { date_of_birth: @actor.date_of_birth, description: @actor.description, film_id: @actor.film_id, name: @actor.name, place_of_birth: @actor.place_of_birth } }
    assert_redirected_to actor_url(@actor)
  end

  test "should destroy actor" do
    assert_difference('Actor.count', -1) do
      delete actor_url(@actor)
    end

    assert_redirected_to actors_url
  end
end
