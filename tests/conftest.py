import pytest
from django.core.cache import cache


@pytest.fixture
def clear_cache():
    yield
    cache.clear()