package org.rabix.common.guice;

import java.util.Arrays;

import javax.annotation.PostConstruct;

import com.google.inject.Binder;
import com.google.inject.Module;
import com.google.inject.TypeLiteral;
import com.google.inject.matcher.Matchers;
import com.google.inject.spi.InjectionListener;
import com.google.inject.spi.TypeEncounter;
import com.google.inject.spi.TypeListener;

public enum PostConstructModule implements Module, TypeListener {

  INSTANCE;

  @Override
  public void configure(final Binder binder) {
    binder.bindListener(Matchers.any(), this);
  }

  @Override
  public <I> void hear(final TypeLiteral<I> type, final TypeEncounter<I> encounter) {
    encounter.register(new InjectionListener<I>() {
      @Override
      public void afterInjection(final I injectee) {
        Arrays.asList(injectee.getClass().getMethods()).stream().filter(m -> m.isAnnotationPresent(PostConstruct.class)).forEach(m -> {
          try {
            m.invoke(injectee);
          } catch (final Exception e) {
            throw new RuntimeException(String.format("@PostConstruct %s", m), e);
          }
        });
      }
    });
  }

}
