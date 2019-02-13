# EVENTSTARTER API README

# 2/13/19
  - MODELS for User, Bookmark, Event, and Comment was completed:
    User (:name, :email)
    Bookmark (:user_id, :event_id)
    Event (:title, :description, :image, :location, :attendee_limit, :total_cost)
    Comment (:event_id, :content)
  - CONTROLLERS & ROUTES for User, Bookmark, Event, and Comment was completed (:index and :update actions only)
  - MODEL RELATIONS completed:
    User has many bookmarks, has many Events through bookmarks.
    Bookmark belongs to User/Event
    Event has many bookmarks, has many Users through bookmarks.
    Event has many comments.
    Comment belongs to Event.
  - Next up is to give Backend to Simon for testing.

# 2/12/19
  - BACKEND RAILS API / REPO CREATED
  - Event model, routes, controller created.
    - Contains :title, :description, :attendee_limit, and :total_cost for now.
  - Page Layout
