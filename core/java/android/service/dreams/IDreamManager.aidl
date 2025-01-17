/**
 * Copyright (c) 2012, The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.service.dreams;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.IBinder;

/** @hide */
interface IDreamManager {
    @UnsupportedAppUsage
    void dream();
    @UnsupportedAppUsage
    void awaken();
    @UnsupportedAppUsage(maxTargetSdk = 30, trackingBug = 170729553)
    void setDreamComponents(in ComponentName[] componentNames);
    @UnsupportedAppUsage(maxTargetSdk = 30, trackingBug = 170729553)
    ComponentName[] getDreamComponents();
    ComponentName getDefaultDreamComponentForUser(int userId);
    void testDream(int userId, in ComponentName componentName);
    @UnsupportedAppUsage
    boolean isDreaming();
    boolean isDozing();
    @UnsupportedAppUsage
    boolean isDreamingOrInPreview();
    void finishSelf(in IBinder token, boolean immediate);
    void startDozing(in IBinder token, int screenState, int screenBrightness);
    void stopDozing(in IBinder token);
    void forceAmbientDisplayEnabled(boolean enabled);
    ComponentName[] getDreamComponentsForUser(int userId);
    void setDreamComponentsForUser(int userId, in ComponentName[] componentNames);
    void setSystemDreamComponent(in ComponentName componentName);
    void registerDreamOverlayService(in ComponentName componentName);
    void startDreamActivity(in Intent intent);
}
