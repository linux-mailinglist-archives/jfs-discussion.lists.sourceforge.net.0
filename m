Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B26764D0141
	for <lists+jfs-discussion@lfdr.de>; Mon,  7 Mar 2022 15:31:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nRENi-0005g4-Ck; Mon, 07 Mar 2022 14:30:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <butterflyhuangxx@gmail.com>) id 1nR8J9-0003uD-Dp
 for jfs-discussion@lists.sourceforge.net; Mon, 07 Mar 2022 08:01:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qUrmKJUcOqaMTLKTkkkXZvWqiBLtiwIHQ3xRdDARhKM=; b=MuS9DpMhrNH2pBoQLlQUPHEkwJ
 77LdVmGrGCVD5MUkZjeHouhZZS+JRxQkpTPC1+1fz7ZhVwC8vW6uo8xF97ogSlFZHLYfhE4AiV7z+
 Hctz/AGhvty7LG4yrI7lnt2mA2sfC3qstz61iI7gTSGp3dTO+VnwKX+CpvDYy+jAPNVE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qUrmKJUcOqaMTLKTkkkXZvWqiBLtiwIHQ3xRdDARhKM=; b=f
 v0Ppq94u6HzGaswtECEAOAUKjntEkZGh06irgwK+8XOnzcutKhBJo+cE4/NbCgeRseIAvxi48gqDL
 3gsp5V4bWUxBBkKeuSw4FzN1rZGnseEYE8yCv+PfwexrraWYKysscFQdra/mXYjbY4HgHuAimkCjV
 br6yQZiKtplxh1d4=;
Received: from mail-yw1-f182.google.com ([209.85.128.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nR8J7-0002KK-2L
 for jfs-discussion@lists.sourceforge.net; Mon, 07 Mar 2022 08:01:29 +0000
Received: by mail-yw1-f182.google.com with SMTP id
 00721157ae682-2d6d0cb5da4so153828007b3.10
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 07 Mar 2022 00:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=qUrmKJUcOqaMTLKTkkkXZvWqiBLtiwIHQ3xRdDARhKM=;
 b=cqAUrxKy+4S2/AVkts81ww7FzNorCd3Fn5Ng0B+YR4/3J1rzhLCkuibz28ladQSvtU
 29JrtwcU07Z7OFCGNWxhNuyQu6Jl8BDARW8ziWnwMWwUjFuA2KtVwp4aZSq6tzvQRWJJ
 d0v4NE0blWVh5GdX01wb6bhsuemJxWg20Mf9r16sUGihLpPeui9XQ9n+yyc+3+x6/Ied
 MCvoEbvC2euFhVT1qugBWTbH+nOg1F5QdZpS07MQeHrvnSUf22zqhhC3yQy+svWP8kbw
 UH1pMqyaNIIwhdjopRd9bBq8C9bmVtHn4L6LD4XhTFWBVrBcvo87COOpwP3JNBgQUd0f
 iCLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=qUrmKJUcOqaMTLKTkkkXZvWqiBLtiwIHQ3xRdDARhKM=;
 b=lMdnFv4DcR9UkJhAu5GI7rRNqLeKb02WW6/wHQZPEWhME9u5X5DFIBO053W8adIr5M
 eEfClMEzilW0uc6JZJyG1rwQ7AV4HOjvEx7q4NXePfL3puzf4yS6GB1xzGe+YBYpD1F5
 7hBKNJapLtSOPUUvsh6Vtdss4EjseQYh/RG4Dzj8+feFXiKRE4KS0bGC/7ArA67qoKg1
 XDOSOcPZ3oZWdA8FFU/ptNt8KNYwyXiJJDfng9PaRycAGIgQ2XdhbZW4KDwrMzKxvR1n
 J8VydzDgQQ5YUHoMp/JHELiaJSAkMAd9bR3P/ElCHXzgGuRj4Ct0dEB7H5yOu1735M4F
 WS8w==
X-Gm-Message-State: AOAM531l0SkFuY7qHBUZi1+XdH/YoR7z/DzAcVLR8njCNsZMpxON8v0B
 L6/011g2XtQj/6eYzcXCFixt2FJuPEMSPu5H2NC9kR7kgrzCdGHi
X-Google-Smtp-Source: ABdhPJxnjHb/Fi2b1WIENFw3qpBDTCXP63MauGovCwx62SxRQlU3uZlOwrfLMkrr+gKZDGka77HQIeREK70z7VYvsUg=
X-Received: by 2002:a81:9954:0:b0:2dc:973d:ec56 with SMTP id
 q81-20020a819954000000b002dc973dec56mr6161142ywg.270.1646640083096; Mon, 07
 Mar 2022 00:01:23 -0800 (PST)
MIME-Version: 1.0
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Mon, 7 Mar 2022 16:01:12 +0800
Message-ID: <CAFcO6XNGVq16N-c=9dfmTiu28jmjh097WGwsapi3tQs=cZ3MeQ@mail.gmail.com>
To: shaggy@kernel.org
Content-Type: multipart/mixed; boundary="0000000000003b588305d99c45a2"
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 there is a null-ptr-deref bug by kernel fuzz. It was triggered
 when continuously remont jfs image to write a log to record I can reproduce
 it on the latest kernel. ### Crash log [ 30.752504][ T7617] BUG: kernel NULL
 pointer dereference, address: 00000000000005a8 [ 30.753179][ T7617] #PF:
 supervisor read access in kernel mode [ 30.753670][ T7617] #PF: error_code(
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.182 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [butterflyhuangxx[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.182 listed in wl.mailspike.net]
X-Headers-End: 1nR8J7-0002KK-2L
X-Mailman-Approved-At: Mon, 07 Mar 2022 14:30:35 +0000
Subject: [Jfs-discussion] A null-ptr-deref bug was triggered when
 continuously remont jfs image to write a log to record
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: jfs-discussion@lists.sourceforge.net, LKML <linux-kernel@vger.kernel.org>
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--0000000000003b588305d99c45a2
Content-Type: text/plain; charset="UTF-8"

Hi, there is a null-ptr-deref bug by kernel fuzz. It was triggered
when continuously remont jfs image to write a log to record
I can reproduce it on the latest kernel.

### Crash log
[   30.752504][ T7617] BUG: kernel NULL pointer dereference, address:
00000000000005a8
[   30.753179][ T7617] #PF: supervisor read access in kernel mode
[   30.753670][ T7617] #PF: error_code(0x0000) - not-present page
[   30.754160][ T7617] PGD 106cb067 P4D 106cb067 PUD f7e7067 PMD 0
[   30.754681][ T7617] Oops: 0000 [#1] PREEMPT SMP
[   30.755073][ T7617] CPU: 1 PID: 7617 Comm: bio_associate_b Tainted:
G        W         5.17.0-rc6+ #47
[   30.755880][ T7617] Hardware name: QEMU Standard PC (i440FX + PIIX,
1996), BIOS 1.13.0-1ubuntu1 04/01/2014
[   30.756688][ T7617] RIP: 0010:bio_associate_blkg_from_css+0x1f1/0x730
[   30.757238][ T7617] Code: c6 50 59 e4 81 48 c7 c7 c0 cc 22 85 e8 d8
8d 41 ff 49 89 5c 24 48 48 83 c4 18 5b 5d 41 5c 41 5d 41 5e 41 5f c3
49 8b 44 24 08 <48> 8b 80 a5
[   30.758904][ T7617] RSP: 0018:ffffc900022f3b70 EFLAGS: 00010246
[   30.759429][ T7617] RAX: 0000000000000000 RBX: 0000000000000000
RCX: 0000000000000001
[   30.760127][ T7617] RDX: 0000000000000000 RSI: ffffffff882f6080
RDI: ffff888046ee3e00
[   30.760739][ T7617] RBP: ffffffff882f6080 R08: 0000000000000000
R09: 0000000000020027
[   30.761297][ T7617] R10: 0000000000000001 R11: 0000000000000000
R12: ffff888046ee3e00
[   30.761854][ T7617] R13: ffff8880482f8400 R14: ffff8880482f85d0
R15: ffff8880482f85d0
[   30.762412][ T7617] FS:  0000000000e05880(0000)
GS:ffff88807ec00000(0000) knlGS:0000000000000000
[   30.763118][ T7617] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   30.763680][ T7617] CR2: 00007fcd480390e8 CR3: 000000000fdf7000
CR4: 00000000000006e0
[   30.764390][ T7617] Call Trace:
[   30.764673][ T7617]  <TASK>
[   30.764929][ T7617]  bio_associate_blkg+0x58/0x190
[   30.765331][ T7617]  lbmStartIO+0x7c/0xf0
[   30.765684][ T7617]  ? lockdep_hardirqs_on+0x79/0x100
[   30.766138][ T7617]  lbmWrite+0xed/0x150
[   30.766492][ T7617]  lmNextPage+0x87/0x150
[   30.766861][ T7617]  lmWriteRecord+0x35d/0x460
[   30.767270][ T7617]  lmLog+0xc2/0x290
[   30.767597][ T7617]  ? __sync_dirty_buffer+0x85/0x160
[   30.768082][ T7617]  jfs_mount_rw+0x15e/0x190
[   30.768465][ T7617]  jfs_fill_super+0x2d3/0x350
[   30.768857][ T7617]  mount_bdev+0x18b/0x1c0
[   30.769217][ T7617]  ? jfs_remount+0x1d0/0x1d0
[   30.769605][ T7617]  legacy_get_tree+0x28/0x50
[   30.769991][ T7617]  vfs_get_tree+0x1d/0xb0
[   30.770362][ T7617]  path_mount+0x42b/0xb10
[   30.770731][ T7617]  do_mount+0x70/0x90
[   30.771056][ T7617]  __x64_sys_mount+0x89/0xc0
[   30.771450][ T7617]  do_syscall_64+0x35/0xb0
[   30.771836][ T7617]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[   30.772327][ T7617] RIP: 0033:0x4521de
[   30.772662][ T7617] Code: 83 c4 08 5b 5d c3 66 0f 1f 44 00 00 c3 66
2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 f3 0f 1e fa 49 89 ca b8 a5
00 00 00 0f 05 <48> 3d 01 f8
[   30.774275][ T7617] RSP: 002b:00007ffeae064a48 EFLAGS: 00000282
ORIG_RAX: 00000000000000a5
[   30.774988][ T7617] RAX: ffffffffffffffda RBX: 0000000000400530
RCX: 00000000004521de
[   30.775692][ T7617] RDX: 0000000020000000 RSI: 0000000020000100
RDI: 00007ffeae064ac0
[   30.776382][ T7617] RBP: 00007ffeae064c10 R08: 00007ffeae064b00
R09: 00007ffeae064a84
[   30.777054][ T7617] R10: 0000000000000000 R11: 0000000000000282
R12: 0000000000404050
[   30.777617][ T7617] R13: 0000000000000000 R14: 00000000004c8018
R15: 0000000000000000

the attachment is reproduce.

Regards,
 butt3rflyh4ck.








--
Active Defense Lab of Venustech

--0000000000003b588305d99c45a2
Content-Type: application/octet-stream; name="repro.cprog"
Content-Disposition: attachment; filename="repro.cprog"
Content-Transfer-Encoding: base64
Content-ID: <f_l0geytsv0>
X-Attachment-Id: f_l0geytsv0

Ly8gYXV0b2dlbmVyYXRlZCBieSBzeXprYWxsZXIgKGh0dHBzOi8vZ2l0aHViLmNvbS9nb29nbGUv
c3l6a2FsbGVyKQoKI2RlZmluZSBfR05VX1NPVVJDRSAKCiNpbmNsdWRlIDxkaXJlbnQuaD4KI2lu
Y2x1ZGUgPGVuZGlhbi5oPgojaW5jbHVkZSA8ZXJybm8uaD4KI2luY2x1ZGUgPGZjbnRsLmg+CiNp
bmNsdWRlIDxzaWduYWwuaD4KI2luY2x1ZGUgPHN0ZGFyZy5oPgojaW5jbHVkZSA8c3RkYm9vbC5o
PgojaW5jbHVkZSA8c3RkZGVmLmg+CiNpbmNsdWRlIDxzdGRpbnQuaD4KI2luY2x1ZGUgPHN0ZGlv
Lmg+CiNpbmNsdWRlIDxzdGRsaWIuaD4KI2luY2x1ZGUgPHN0cmluZy5oPgojaW5jbHVkZSA8c3lz
L2lvY3RsLmg+CiNpbmNsdWRlIDxzeXMvbW91bnQuaD4KI2luY2x1ZGUgPHN5cy9wcmN0bC5oPgoj
aW5jbHVkZSA8c3lzL3N0YXQuaD4KI2luY2x1ZGUgPHN5cy9zeXNjYWxsLmg+CiNpbmNsdWRlIDxz
eXMvdHlwZXMuaD4KI2luY2x1ZGUgPHN5cy93YWl0Lmg+CiNpbmNsdWRlIDx0aW1lLmg+CiNpbmNs
dWRlIDx1bmlzdGQuaD4KCiNpbmNsdWRlIDxsaW51eC9sb29wLmg+CgojaWZuZGVmIF9fTlJfbWVt
ZmRfY3JlYXRlCiNkZWZpbmUgX19OUl9tZW1mZF9jcmVhdGUgMzE5CiNlbmRpZgoKc3RhdGljIHVu
c2lnbmVkIGxvbmcgbG9uZyBwcm9jaWQ7CgpzdGF0aWMgdm9pZCBzbGVlcF9tcyh1aW50NjRfdCBt
cykKewoJdXNsZWVwKG1zICogMTAwMCk7Cn0KCnN0YXRpYyB1aW50NjRfdCBjdXJyZW50X3RpbWVf
bXModm9pZCkKewoJc3RydWN0IHRpbWVzcGVjIHRzOwoJaWYgKGNsb2NrX2dldHRpbWUoQ0xPQ0tf
TU9OT1RPTklDLCAmdHMpKQoJZXhpdCgxKTsKCXJldHVybiAodWludDY0X3QpdHMudHZfc2VjICog
MTAwMCArICh1aW50NjRfdCl0cy50dl9uc2VjIC8gMTAwMDAwMDsKfQoKc3RhdGljIGJvb2wgd3Jp
dGVfZmlsZShjb25zdCBjaGFyKiBmaWxlLCBjb25zdCBjaGFyKiB3aGF0LCAuLi4pCnsKCWNoYXIg
YnVmWzEwMjRdOwoJdmFfbGlzdCBhcmdzOwoJdmFfc3RhcnQoYXJncywgd2hhdCk7Cgl2c25wcmlu
dGYoYnVmLCBzaXplb2YoYnVmKSwgd2hhdCwgYXJncyk7Cgl2YV9lbmQoYXJncyk7CglidWZbc2l6
ZW9mKGJ1ZikgLSAxXSA9IDA7CglpbnQgbGVuID0gc3RybGVuKGJ1Zik7CglpbnQgZmQgPSBvcGVu
KGZpbGUsIE9fV1JPTkxZIHwgT19DTE9FWEVDKTsKCWlmIChmZCA9PSAtMSkKCQlyZXR1cm4gZmFs
c2U7CglpZiAod3JpdGUoZmQsIGJ1ZiwgbGVuKSAhPSBsZW4pIHsKCQlpbnQgZXJyID0gZXJybm87
CgkJY2xvc2UoZmQpOwoJCWVycm5vID0gZXJyOwoJCXJldHVybiBmYWxzZTsKCX0KCWNsb3NlKGZk
KTsKCXJldHVybiB0cnVlOwp9CgpzdHJ1Y3QgZnNfaW1hZ2Vfc2VnbWVudCB7Cgl2b2lkKiBkYXRh
OwoJdWludHB0cl90IHNpemU7Cgl1aW50cHRyX3Qgb2Zmc2V0Owp9OwoKI2RlZmluZSBJTUFHRV9N
QVhfU0VHTUVOVFMgNDA5NgojZGVmaW5lIElNQUdFX01BWF9TSVpFICgxMjkgPDwgMjApCgpzdGF0
aWMgdW5zaWduZWQgbG9uZyBmc19pbWFnZV9zZWdtZW50X2NoZWNrKHVuc2lnbmVkIGxvbmcgc2l6
ZSwgdW5zaWduZWQgbG9uZyBuc2Vncywgc3RydWN0IGZzX2ltYWdlX3NlZ21lbnQqIHNlZ3MpCnsK
CWlmIChuc2VncyA+IElNQUdFX01BWF9TRUdNRU5UUykKCQluc2VncyA9IElNQUdFX01BWF9TRUdN
RU5UUzsKCWZvciAoc2l6ZV90IGkgPSAwOyBpIDwgbnNlZ3M7IGkrKykgewoJCWlmIChzZWdzW2ld
LnNpemUgPiBJTUFHRV9NQVhfU0laRSkKCQkJc2Vnc1tpXS5zaXplID0gSU1BR0VfTUFYX1NJWkU7
CgkJc2Vnc1tpXS5vZmZzZXQgJT0gSU1BR0VfTUFYX1NJWkU7CgkJaWYgKHNlZ3NbaV0ub2Zmc2V0
ID4gSU1BR0VfTUFYX1NJWkUgLSBzZWdzW2ldLnNpemUpCgkJCXNlZ3NbaV0ub2Zmc2V0ID0gSU1B
R0VfTUFYX1NJWkUgLSBzZWdzW2ldLnNpemU7CgkJaWYgKHNpemUgPCBzZWdzW2ldLm9mZnNldCAr
IHNlZ3NbaV0ub2Zmc2V0KQoJCQlzaXplID0gc2Vnc1tpXS5vZmZzZXQgKyBzZWdzW2ldLm9mZnNl
dDsKCX0KCWlmIChzaXplID4gSU1BR0VfTUFYX1NJWkUpCgkJc2l6ZSA9IElNQUdFX01BWF9TSVpF
OwoJcmV0dXJuIHNpemU7Cn0Kc3RhdGljIGludCBzZXR1cF9sb29wX2RldmljZShsb25nIHVuc2ln
bmVkIHNpemUsIGxvbmcgdW5zaWduZWQgbnNlZ3MsIHN0cnVjdCBmc19pbWFnZV9zZWdtZW50KiBz
ZWdzLCBjb25zdCBjaGFyKiBsb29wbmFtZSwgaW50KiBtZW1mZF9wLCBpbnQqIGxvb3BmZF9wKQp7
CglpbnQgZXJyID0gMCwgbG9vcGZkID0gLTE7CglzaXplID0gZnNfaW1hZ2Vfc2VnbWVudF9jaGVj
ayhzaXplLCBuc2Vncywgc2Vncyk7CglpbnQgbWVtZmQgPSBzeXNjYWxsKF9fTlJfbWVtZmRfY3Jl
YXRlLCAic3l6a2FsbGVyIiwgMCk7CglpZiAobWVtZmQgPT0gLTEpIHsKCQllcnIgPSBlcnJubzsK
CQlnb3RvIGVycm9yOwoJfQoJaWYgKGZ0cnVuY2F0ZShtZW1mZCwgc2l6ZSkpIHsKCQllcnIgPSBl
cnJubzsKCQlnb3RvIGVycm9yX2Nsb3NlX21lbWZkOwoJfQoJZm9yIChzaXplX3QgaSA9IDA7IGkg
PCBuc2VnczsgaSsrKSB7CgkJaWYgKHB3cml0ZShtZW1mZCwgc2Vnc1tpXS5kYXRhLCBzZWdzW2ld
LnNpemUsIHNlZ3NbaV0ub2Zmc2V0KSA8IDApIHsKCQl9Cgl9Cglsb29wZmQgPSBvcGVuKGxvb3Bu
YW1lLCBPX1JEV1IpOwoJaWYgKGxvb3BmZCA9PSAtMSkgewoJCWVyciA9IGVycm5vOwoJCWdvdG8g
ZXJyb3JfY2xvc2VfbWVtZmQ7Cgl9CglpZiAoaW9jdGwobG9vcGZkLCBMT09QX1NFVF9GRCwgbWVt
ZmQpKSB7CgkJaWYgKGVycm5vICE9IEVCVVNZKSB7CgkJCWVyciA9IGVycm5vOwoJCQlnb3RvIGVy
cm9yX2Nsb3NlX2xvb3A7CgkJfQoJCWlvY3RsKGxvb3BmZCwgTE9PUF9DTFJfRkQsIDApOwoJCXVz
bGVlcCgxMDAwKTsKCQlpZiAoaW9jdGwobG9vcGZkLCBMT09QX1NFVF9GRCwgbWVtZmQpKSB7CgkJ
CWVyciA9IGVycm5vOwoJCQlnb3RvIGVycm9yX2Nsb3NlX2xvb3A7CgkJfQoJfQoJKm1lbWZkX3Ag
PSBtZW1mZDsKCSpsb29wZmRfcCA9IGxvb3BmZDsKCXJldHVybiAwOwoKZXJyb3JfY2xvc2VfbG9v
cDoKCWNsb3NlKGxvb3BmZCk7CmVycm9yX2Nsb3NlX21lbWZkOgoJY2xvc2UobWVtZmQpOwplcnJv
cjoKCWVycm5vID0gZXJyOwoJcmV0dXJuIC0xOwp9CgpzdGF0aWMgbG9uZyBzeXpfbW91bnRfaW1h
Z2Uodm9sYXRpbGUgbG9uZyBmc2FyZywgdm9sYXRpbGUgbG9uZyBkaXIsIHZvbGF0aWxlIHVuc2ln
bmVkIGxvbmcgc2l6ZSwgdm9sYXRpbGUgdW5zaWduZWQgbG9uZyBuc2Vncywgdm9sYXRpbGUgbG9u
ZyBzZWdtZW50cywgdm9sYXRpbGUgbG9uZyBmbGFncywgdm9sYXRpbGUgbG9uZyBvcHRzYXJnKQp7
CglzdHJ1Y3QgZnNfaW1hZ2Vfc2VnbWVudCogc2VncyA9IChzdHJ1Y3QgZnNfaW1hZ2Vfc2VnbWVu
dCopc2VnbWVudHM7CglpbnQgcmVzID0gLTEsIGVyciA9IDAsIGxvb3BmZCA9IC0xLCBtZW1mZCA9
IC0xLCBuZWVkX2xvb3BfZGV2aWNlID0gISFzZWdzOwoJY2hhciogbW91bnRfb3B0cyA9IChjaGFy
KilvcHRzYXJnOwoJY2hhciogdGFyZ2V0ID0gKGNoYXIqKWRpcjsKCWNoYXIqIGZzID0gKGNoYXIq
KWZzYXJnOwoJY2hhciogc291cmNlID0gTlVMTDsKCWNoYXIgbG9vcG5hbWVbNjRdOwoJaWYgKG5l
ZWRfbG9vcF9kZXZpY2UpIHsKCQltZW1zZXQobG9vcG5hbWUsIDAsIHNpemVvZihsb29wbmFtZSkp
OwoJCXNucHJpbnRmKGxvb3BuYW1lLCBzaXplb2YobG9vcG5hbWUpLCAiL2Rldi9sb29wJWxsdSIs
IHByb2NpZCk7CgkJaWYgKHNldHVwX2xvb3BfZGV2aWNlKHNpemUsIG5zZWdzLCBzZWdzLCBsb29w
bmFtZSwgJm1lbWZkLCAmbG9vcGZkKSA9PSAtMSkKCQkJcmV0dXJuIC0xOwoJCXNvdXJjZSA9IGxv
b3BuYW1lOwoJfQoJbWtkaXIodGFyZ2V0LCAwNzc3KTsKCWNoYXIgb3B0c1syNTZdOwoJbWVtc2V0
KG9wdHMsIDAsIHNpemVvZihvcHRzKSk7CglpZiAoc3RybGVuKG1vdW50X29wdHMpID4gKHNpemVv
ZihvcHRzKSAtIDMyKSkgewoJfQoJc3RybmNweShvcHRzLCBtb3VudF9vcHRzLCBzaXplb2Yob3B0
cykgLSAzMik7CglpZiAoc3RyY21wKGZzLCAiaXNvOTY2MCIpID09IDApIHsKCQlmbGFncyB8PSBN
U19SRE9OTFk7Cgl9IGVsc2UgaWYgKHN0cm5jbXAoZnMsICJleHQiLCAzKSA9PSAwKSB7CgkJaWYg
KHN0cnN0cihvcHRzLCAiZXJyb3JzPXBhbmljIikgfHwgc3Ryc3RyKG9wdHMsICJlcnJvcnM9cmVt
b3VudC1ybyIpID09IDApCgkJCXN0cmNhdChvcHRzLCAiLGVycm9ycz1jb250aW51ZSIpOwoJfSBl
bHNlIGlmIChzdHJjbXAoZnMsICJ4ZnMiKSA9PSAwKSB7CgkJc3RyY2F0KG9wdHMsICIsbm91dWlk
Iik7Cgl9CglyZXMgPSBtb3VudChzb3VyY2UsIHRhcmdldCwgZnMsIGZsYWdzLCBvcHRzKTsKCWlm
IChyZXMgPT0gLTEpIHsKCQllcnIgPSBlcnJubzsKCQlnb3RvIGVycm9yX2NsZWFyX2xvb3A7Cgl9
CglyZXMgPSBvcGVuKHRhcmdldCwgT19SRE9OTFkgfCBPX0RJUkVDVE9SWSk7CglpZiAocmVzID09
IC0xKSB7CgkJZXJyID0gZXJybm87Cgl9CgplcnJvcl9jbGVhcl9sb29wOgoJaWYgKG5lZWRfbG9v
cF9kZXZpY2UpIHsKCQlpb2N0bChsb29wZmQsIExPT1BfQ0xSX0ZELCAwKTsKCQljbG9zZShsb29w
ZmQpOwoJCWNsb3NlKG1lbWZkKTsKCX0KCWVycm5vID0gZXJyOwoJcmV0dXJuIHJlczsKfQoKc3Rh
dGljIHZvaWQga2lsbF9hbmRfd2FpdChpbnQgcGlkLCBpbnQqIHN0YXR1cykKewoJa2lsbCgtcGlk
LCBTSUdLSUxMKTsKCWtpbGwocGlkLCBTSUdLSUxMKTsKCWZvciAoaW50IGkgPSAwOyBpIDwgMTAw
OyBpKyspIHsKCQlpZiAod2FpdHBpZCgtMSwgc3RhdHVzLCBXTk9IQU5HIHwgX19XQUxMKSA9PSBw
aWQpCgkJCXJldHVybjsKCQl1c2xlZXAoMTAwMCk7Cgl9CglESVIqIGRpciA9IG9wZW5kaXIoIi9z
eXMvZnMvZnVzZS9jb25uZWN0aW9ucyIpOwoJaWYgKGRpcikgewoJCWZvciAoOzspIHsKCQkJc3Ry
dWN0IGRpcmVudCogZW50ID0gcmVhZGRpcihkaXIpOwoJCQlpZiAoIWVudCkKCQkJCWJyZWFrOwoJ
CQlpZiAoc3RyY21wKGVudC0+ZF9uYW1lLCAiLiIpID09IDAgfHwgc3RyY21wKGVudC0+ZF9uYW1l
LCAiLi4iKSA9PSAwKQoJCQkJY29udGludWU7CgkJCWNoYXIgYWJvcnRbMzAwXTsKCQkJc25wcmlu
dGYoYWJvcnQsIHNpemVvZihhYm9ydCksICIvc3lzL2ZzL2Z1c2UvY29ubmVjdGlvbnMvJXMvYWJv
cnQiLCBlbnQtPmRfbmFtZSk7CgkJCWludCBmZCA9IG9wZW4oYWJvcnQsIE9fV1JPTkxZKTsKCQkJ
aWYgKGZkID09IC0xKSB7CgkJCQljb250aW51ZTsKCQkJfQoJCQlpZiAod3JpdGUoZmQsIGFib3J0
LCAxKSA8IDApIHsKCQkJfQoJCQljbG9zZShmZCk7CgkJfQoJCWNsb3NlZGlyKGRpcik7Cgl9IGVs
c2UgewoJfQoJd2hpbGUgKHdhaXRwaWQoLTEsIHN0YXR1cywgX19XQUxMKSAhPSBwaWQpIHsKCX0K
fQoKc3RhdGljIHZvaWQgcmVzZXRfbG9vcCgpCnsKCWNoYXIgYnVmWzY0XTsKCXNucHJpbnRmKGJ1
Ziwgc2l6ZW9mKGJ1ZiksICIvZGV2L2xvb3AlbGx1IiwgcHJvY2lkKTsKCWludCBsb29wZmQgPSBv
cGVuKGJ1ZiwgT19SRFdSKTsKCWlmIChsb29wZmQgIT0gLTEpIHsKCQlpb2N0bChsb29wZmQsIExP
T1BfQ0xSX0ZELCAwKTsKCQljbG9zZShsb29wZmQpOwoJfQp9CgpzdGF0aWMgdm9pZCBzZXR1cF90
ZXN0KCkKewoJcHJjdGwoUFJfU0VUX1BERUFUSFNJRywgU0lHS0lMTCwgMCwgMCwgMCk7CglzZXRw
Z3JwKCk7Cgl3cml0ZV9maWxlKCIvcHJvYy9zZWxmL29vbV9zY29yZV9hZGoiLCAiMTAwMCIpOwp9
CgpzdGF0aWMgdm9pZCBleGVjdXRlX29uZSh2b2lkKTsKCiNkZWZpbmUgV0FJVF9GTEFHUyBfX1dB
TEwKCnN0YXRpYyB2b2lkIGxvb3Aodm9pZCkKewoJaW50IGl0ZXIgPSAwOwoJZm9yICg7OyBpdGVy
KyspIHsKCQlyZXNldF9sb29wKCk7CgkJaW50IHBpZCA9IGZvcmsoKTsKCQlpZiAocGlkIDwgMCkK
CWV4aXQoMSk7CgkJaWYgKHBpZCA9PSAwKSB7CgkJCXNldHVwX3Rlc3QoKTsKCQkJZXhlY3V0ZV9v
bmUoKTsKCQkJZXhpdCgwKTsKCQl9CgkJaW50IHN0YXR1cyA9IDA7CgkJdWludDY0X3Qgc3RhcnQg
PSBjdXJyZW50X3RpbWVfbXMoKTsKCQlmb3IgKDs7KSB7CgkJCWlmICh3YWl0cGlkKC0xLCAmc3Rh
dHVzLCBXTk9IQU5HIHwgV0FJVF9GTEFHUykgPT0gcGlkKQoJCQkJYnJlYWs7CgkJCXNsZWVwX21z
KDEpOwoJCQlpZiAoY3VycmVudF90aW1lX21zKCkgLSBzdGFydCA8IDUwMDApCgkJCQljb250aW51
ZTsKCQkJa2lsbF9hbmRfd2FpdChwaWQsICZzdGF0dXMpOwoJCQlicmVhazsKCQl9Cgl9Cn0KCnZv
aWQgZXhlY3V0ZV9vbmUodm9pZCkKewptZW1jcHkoKHZvaWQqKTB4MjAwMDAwMDAsICJqZnNcMDAw
IiwgNCk7Cm1lbWNweSgodm9pZCopMHgyMDAwMDEwMCwgIi4vZmlsZTBcMDAwIiwgOCk7CioodWlu
dDY0X3QqKTB4MjAwMDAyMDAgPSAweDIwMDEwMDAwOwptZW1jcHkoKHZvaWQqKTB4MjAwMTAwMDAs
ICJceDRhXHg0Nlx4NTNceDMxXHgwMVx4MDBceDAwXHgwMFx4NjBceDc2XHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MTBceDAwXHgwMFx4MGNceDAwXHgwM1x4MDBceDAwXHgwMlx4MDBceDAw
XHgwOVx4MDBceDAwXHgwMFx4MDBceDIwXHgwMFx4MDBceDAwXHgwOVx4MjBceDEwXHgwMFx4MDBc
eDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDA0XHgwMFx4MDBceDAwXHgxOFx4MDBceDAwXHgwMFx4
MDJceDAwXHgwMFx4MDBceDE2XHgwMFx4MDBceDAwXHgzMlx4MDdceDAwXHgwMFx4MDFceDAwXHgw
MFx4MDBceDAwXHgwMVx4MDBceDAwXHgwMFx4MGZceDAwXHgwMFx4MzRceDAwXHgwMFx4MDBceGNj
XHgwZVx4MDBceDAwXHgxMFx4YzRceDY0XHg1Zlx4MDBceDAwXHgwMFx4MDBceDMyXHgwMFx4MDBc
eDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHhhMVx4YmJceDljXHhlM1x4NTJceGUw
XHg0YVx4ZGZceGI5XHhiNVx4OWFceGZmXHg0N1x4YTVceDU5XHhlYVx4MDBceDAwXHgwMFx4MDBc
eDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4NTBceGY0XHg0Mlx4NTZceGZkXHg3Zlx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDAiLCAxOTIpOwoqKHVpbnQ2NF90KikweDIwMDAw
MjA4ID0gMHhjMDsKKih1aW50NjRfdCopMHgyMDAwMDIxMCA9IDB4ODAwMDsKKih1aW50NjRfdCop
MHgyMDAwMDIxOCA9IDA7CioodWludDY0X3QqKTB4MjAwMDAyMjAgPSAwOwoqKHVpbnQ2NF90Kikw
eDIwMDAwMjI4ID0gMHg5MDAwOwoqKHVpbnQ2NF90KikweDIwMDAwMjMwID0gMDsKKih1aW50NjRf
dCopMHgyMDAwMDIzOCA9IDA7CioodWludDY0X3QqKTB4MjAwMDAyNDAgPSAweDk4MDA7CioodWlu
dDY0X3QqKTB4MjAwMDAyNDggPSAwOwoqKHVpbnQ2NF90KikweDIwMDAwMjUwID0gMDsKKih1aW50
NjRfdCopMHgyMDAwMDI1OCA9IDB4YTgwMDsKKih1aW50NjRfdCopMHgyMDAwMDI2MCA9IDA7Cioo
dWludDY0X3QqKTB4MjAwMDAyNjggPSAwOwoqKHVpbnQ2NF90KikweDIwMDAwMjcwID0gMHhhYTAw
OwoqKHVpbnQ2NF90KikweDIwMDAwMjc4ID0gMDsKKih1aW50NjRfdCopMHgyMDAwMDI4MCA9IDA7
CioodWludDY0X3QqKTB4MjAwMDAyODggPSAweGFjMDA7CioodWludDY0X3QqKTB4MjAwMDAyOTAg
PSAwOwoqKHVpbnQ2NF90KikweDIwMDAwMjk4ID0gMDsKKih1aW50NjRfdCopMHgyMDAwMDJhMCA9
IDB4YjAyMDsKKih1aW50NjRfdCopMHgyMDAwMDJhOCA9IDB4MjAwMTBmMDA7Cm1lbWNweSgodm9p
ZCopMHgyMDAxMGYwMCwgIlx4MTBceGM0XHg2NFx4NWZceDAxXHgwMFx4MDBceDAwXHgwMVx4MDBc
eDAwXHgwMFx4MDFceDAwXHgwMFx4MDBceDA0XHgwMFx4MDBceDAwXHgwYlx4MDBceDAwXHgwMFx4
MDBceDIwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMlx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAxXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAw
XHg4MFx4MDFceDAwXHgxMFx4YzRceDY0XHg1Zlx4MDBceDAwXHgwMFx4MDBceDEwXHhjNFx4NjRc
eDVmXHgwMFx4MDBceDAwXHgwMFx4MTBceGM0XHg2NFx4NWZceDAwXHgwMFx4MDBceDAwXHgxMFx4
YzRceDY0XHg1Zlx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAw
XHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDJceDAwXHgwMFx4MDBc
eDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAxXHgwMFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDAiLCAxNjApOwoqKHVpbnQ2NF90KikweDIwMDAw
MmIwID0gMHhhMDsKKih1aW50NjRfdCopMHgyMDAwMDJiOCA9IDB4YjIwMDsKKih1aW50NjRfdCop
MHgyMDAwMDJjMCA9IDB4MjAwMTEwMDA7Cm1lbWNweSgodm9pZCopMHgyMDAxMTAwMCwgIlx4MDBc
eDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDgzXHgwMFx4MDNceDAwXHgxMlx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAyXHgwMFx4MDBceDAw
XHgwOVx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBc
eDAwXHgwMCIsIDYwKTsKKih1aW50NjRfdCopMHgyMDAwMDJjOCA9IDB4M2M7CioodWludDY0X3Qq
KTB4MjAwMDAyZDAgPSAweGIyZTA7CioodWludDY0X3QqKTB4MjAwMDAyZDggPSAweDIwMDExMTAw
OwptZW1jcHkoKHZvaWQqKTB4MjAwMTExMDAsICJceDEwXHhjNFx4NjRceDVmXHgwMVx4MDBceDAw
XHgwMFx4MDJceDAwXHgwMFx4MDBceDAxXHgwMFx4MDBceDAwXHgwNFx4MDBceDAwXHgwMFx4MGJc
eDAwXHgwMFx4MDBceDAwXHg2MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDZceDAwXHgwMFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwMVx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4ODBceDAxXHgwMFx4MTBceGM0XHg2NFx4NWZceDAwXHgwMFx4MDBceDAw
XHgxMFx4YzRceDY0XHg1Zlx4MDBceDAwXHgwMFx4MDBceDEwXHhjNFx4NjRceDVmXHgwMFx4MDBc
eDAwXHgwMFx4MTBceGM0XHg2NFx4NWZceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAy
XHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMCIsIDEyOCk7CioodWludDY0X3QqKTB4MjAwMDAy
ZTAgPSAweDgwOwoqKHVpbnQ2NF90KikweDIwMDAwMmU4ID0gMHhiNDAwOwoqKHVpbnQ2NF90Kikw
eDIwMDAwMmYwID0gMHgyMDAxMTIwMDsKbWVtY3B5KCh2b2lkKikweDIwMDExMjAwLCAiXHgwMFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4ODNceDAwXHgwM1x4MDBceDEyXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAw
XHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDZceDAwXHgwMFx4MDBc
eDEwIiwgNDUpOwoqKHVpbnQ2NF90KikweDIwMDAwMmY4ID0gMHgyZDsKKih1aW50NjRfdCopMHgy
MDAwMDMwMCA9IDB4YjRlMDsKKih1aW50NjRfdCopMHgyMDAwMDMwOCA9IDA7CioodWludDY0X3Qq
KTB4MjAwMDAzMTAgPSAwOwoqKHVpbnQ2NF90KikweDIwMDAwMzE4ID0gMDsKKih1aW50NjRfdCop
MHgyMDAwMDMyMCA9IDB4MjAwMTE3MDA7Cm1lbWNweSgodm9pZCopMHgyMDAxMTcwMCwgIlx4MTBc
eGM0XHg2NFx4NWZceDAxXHgwMFx4MDBceDAwXHgxMFx4MDBceDAwXHgwMFx4MDFceDAwXHgwMFx4
MDBceDA0XHgwMFx4MDBceDAwXHgwYlx4MDBceDAwXHgwMFx4MDBceDIwIiwgMjYpOwoqKHVpbnQ2
NF90KikweDIwMDAwMzI4ID0gMHgxYTsKKih1aW50NjRfdCopMHgyMDAwMDMzMCA9IDB4ZDAwMDsK
Kih1aW50NjRfdCopMHgyMDAwMDMzOCA9IDB4MjAwMTM5MDA7Cm1lbWNweSgodm9pZCopMHgyMDAx
MzkwMCwgIlx4MTBceGM0XHg2NFx4NWZceDAxXHgwMFx4MDBceDAwXHgwMVx4MDBceDAwXHgwMFx4
MDFceDAwXHgwMFx4MDBceDA0XHgwMFx4MDBceDAwXHgxOFx4MDBceDAwXHgwMFx4MDBceDIwIiwg
MjYpOwoqKHVpbnQ2NF90KikweDIwMDAwMzQwID0gMHgxYTsKKih1aW50NjRfdCopMHgyMDAwMDM0
OCA9IDB4MTgyMDA7Cm1lbWNweSgodm9pZCopMHgyMDAwMDkwMCwgIm5vaW50ZWdyaXR5IiwgMTEp
OwoqKHVpbnQ4X3QqKTB4MjAwMDA5MGIgPSAweDJjOwptZW1jcHkoKHZvaWQqKTB4MjAwMDA5MGMs
ICJnaWQiLCAzKTsKKih1aW50OF90KikweDIwMDAwOTBmID0gMHgzZDsKc3ByaW50ZigoY2hhciop
MHgyMDAwMDkxMCwgIjB4JTAxNmxseCIsIChsb25nIGxvbmcpMCk7CioodWludDhfdCopMHgyMDAw
MDkyMiA9IDB4MmM7Cm1lbWNweSgodm9pZCopMHgyMDAwMDkyMywgIm5vcXVvdGEiLCA3KTsKKih1
aW50OF90KikweDIwMDAwOTJhID0gMHgyYzsKbWVtY3B5KCh2b2lkKikweDIwMDAwOTJiLCAidWlk
IiwgMyk7CioodWludDhfdCopMHgyMDAwMDkyZSA9IDB4M2Q7CnNwcmludGYoKGNoYXIqKTB4MjAw
MDA5MmYsICIweCUwMTZsbHgiLCAobG9uZyBsb25nKTApOwoqKHVpbnQ4X3QqKTB4MjAwMDA5NDEg
PSAweDJjOwptZW1jcHkoKHZvaWQqKTB4MjAwMDA5NDIsICJxdW90YSIsIDUpOwoqKHVpbnQ4X3Qq
KTB4MjAwMDA5NDcgPSAweDJjOwptZW1jcHkoKHZvaWQqKTB4MjAwMDA5NDgsICJlcnJvcnM9Y29u
dGludWUiLCAxNSk7CioodWludDhfdCopMHgyMDAwMDk1NyA9IDB4MmM7Cm1lbWNweSgodm9pZCop
MHgyMDAwMDk1OCwgImlvY2hhcnNldCIsIDkpOwoqKHVpbnQ4X3QqKTB4MjAwMDA5NjEgPSAweDNk
OwptZW1jcHkoKHZvaWQqKTB4MjAwMDA5NjIsICJub25lIiwgNCk7CioodWludDhfdCopMHgyMDAw
MDk2NiA9IDB4MmM7Cm1lbWNweSgodm9pZCopMHgyMDAwMDk2NywgImVycm9ycz1yZW1vdW50LXJv
IiwgMTcpOwoqKHVpbnQ4X3QqKTB4MjAwMDA5NzggPSAweDJjOwoqKHVpbnQ4X3QqKTB4MjAwMDA5
NzkgPSAwOwpzeXpfbW91bnRfaW1hZ2UoMHgyMDAwMDAwMCwgMHgyMDAwMDEwMCwgMCwgMHhlLCAw
eDIwMDAwMjAwLCAwLCAweDIwMDAwOTAwKTsKCn0KaW50IG1haW4odm9pZCkKewoJCXN5c2NhbGwo
X19OUl9tbWFwLCAweDFmZmZmMDAwdWwsIDB4MTAwMHVsLCAwdWwsIDB4MzJ1bCwgLTEsIDB1bCk7
CglzeXNjYWxsKF9fTlJfbW1hcCwgMHgyMDAwMDAwMHVsLCAweDEwMDAwMDB1bCwgN3VsLCAweDMy
dWwsIC0xLCAwdWwpOwoJc3lzY2FsbChfX05SX21tYXAsIDB4MjEwMDAwMDB1bCwgMHgxMDAwdWws
IDB1bCwgMHgzMnVsLCAtMSwgMHVsKTsKCQkJbG9vcCgpOwoJcmV0dXJuIDA7Cn0K
--0000000000003b588305d99c45a2
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--0000000000003b588305d99c45a2
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--0000000000003b588305d99c45a2--

