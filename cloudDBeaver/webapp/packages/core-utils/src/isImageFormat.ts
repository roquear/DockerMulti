/*
 * CloudBeaver - Cloud Database Manager
 * Copyright (C) 2020-2022 DBeaver Corp and others
 *
 * Licensed under the Apache License, Version 2.0.
 * you may not use this file except in compliance with the License.
 */

export function isImageFormat(value: string): boolean {
  return value.match(/\.(jpeg|jpg|gif|png|svg|bmp|ico)$/) != null;
}
