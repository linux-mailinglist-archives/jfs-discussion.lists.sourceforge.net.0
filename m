Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47942A71794
	for <lists+jfs-discussion@lfdr.de>; Wed, 26 Mar 2025 14:32:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1txQrC-0002hs-PB;
	Wed, 26 Mar 2025 13:31:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wolffd@comp.nus.edu.sg>) id 1txGQu-0003k2-Iy
 for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Mar 2025 02:23:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m2mPmWr/2SlZNycQ3XRYXAUaSbvy/AwIut4f68qIfNQ=; b=ao0BLz3AohSGUNbBa8BmVYWW4U
 H4o+kdxxdcGdVW+E3Cs+qX2erG4TlZ9Vf0naRbMatG7gGAR5PT+MDImvnZEpJV/MkIPowki71IdNR
 F81iA178AW3FMDFYQkEv012nKV/ZoHOU3P98/R50rnMllGOVR2Q+73pjqCceaNNBWpjQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m2mPmWr/2SlZNycQ3XRYXAUaSbvy/AwIut4f68qIfNQ=; b=RwrYh0hkxoPifb/eXWHA1d8r2e
 ov4q+jZWsUOKDJCozlUFmjn7xkIMveSfcYNb6v3zNdXHxn7Z1z1FO8m3F20DacUbX5m/vaOm2inRl
 FsjFfRcICW4Lizr9E10AZIE8ow23CCnsqqg9rRExd6rYdWSkBd5DgZQGAVxE/n625l1Q=;
Received: from 84-20.comp.nus.edu.sg ([137.132.84.20]
 helo=smtpgw-1-2.nogo.comp.nus.edu.sg)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1txGQn-00030A-ID for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Mar 2025 02:23:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by smtpgw-1-2.nogo.comp.nus.edu.sg (Postfix) with ESMTP id 38EB0160AFD
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 26 Mar 2025 10:23:37 +0800 (+08)
X-Virus-Scanned: Debian amavisd-new at smtpgw-1-2.comp.nus.edu.sg
Received: from smtpgw-1-2.nogo.comp.nus.edu.sg ([127.0.0.1])
 by localhost (smtpgw-1-2.comp.nus.edu.sg [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wRSyuUTxEjXt for <jfs-discussion@lists.sourceforge.net>;
 Wed, 26 Mar 2025 10:23:35 +0800 (+08)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtpgw-1-2.nogo.comp.nus.edu.sg (Postfix) with ESMTPS
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 26 Mar 2025 10:23:35 +0800 (+08)
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-3912d9848a7so194577f8f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 25 Mar 2025 19:23:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742955813; x=1743560613;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=m2mPmWr/2SlZNycQ3XRYXAUaSbvy/AwIut4f68qIfNQ=;
 b=KnBB1sHXo572E460dDRr0QP53nX0cMZkhjDqdcY9o2Zq4QcjFntWtIpVCxNXMA7xA8
 Tytm5lAdYZLdjV1uqsT7NAuVC0mSLR0sdHBZq4iVUjKL+picl9VkvFpqVT7WfwrhOmqf
 pq2HiHqIHlEX7DT5HWKXAMIXmgv/UQZfwLqj1xbbNIwYKBd+IuT8p9AnKyxSVuXRu01c
 HXVxPYFBLIkbTBylG/VEPKUiq3C2WYYPDIGo72dihee54m9UtthscPqmWXJIg6M5qvxV
 OryPLgqWTJ7/r7nfP9FGDqIc3m39qJ/Nq3C/+yqhhaQbPPPS2B0WzhAvHQS3T5/ettRI
 guCg==
X-Gm-Message-State: AOJu0Yw0xViL4jWIotGfvCYfvKESLk0EDjUyrTBQDXfBi63cdVeLHV/y
 EBosr9PWVFsJTQRKZW08SYU4pJzOkpIfpnSEgr0XJfSM5vGumzboQYKqvq9UoVj4LyNxHrwofjo
 uXHkbgTAmQg/0K0VfscANdCzbhDxCnFsbpmwI8EN34j45hhhEI8YRcMnV8tp2CHR0gFwNVfrJId
 0fN3bDNgxIm21JFAdQfs8m113OIzkhVhzG0yQXvt7r+sK0EE3F/yESFtRqlg==
X-Gm-Gg: ASbGncui8MZZ5IGTH6Z3LMu5Y2cAsEEAbRHbh5ns1bfUzZxa01o5R98w2YpJQjN5eev
 xRuIQItKzArI4DC5jBHzWtD/0XXWLpoef6BcK7LAe4ftkdJbYPWqiW9zoxorOSffQTucGfxdnmI
 I=
X-Received: by 2002:a5d:5982:0:b0:38a:4184:14ec with SMTP id
 ffacd0b85a97d-39acc465fc3mr1531051f8f.1.1742955813297; 
 Tue, 25 Mar 2025 19:23:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IED2q1oQgvbda8jAehho7lvf9Adxn/sZJ+Qv5Fp8dX/qbhLqbUZEwJXjZSvR3TO0LI4++aNMmIXvSqzkdkNA50=
X-Received: by 2002:a5d:5982:0:b0:38a:4184:14ec with SMTP id
 ffacd0b85a97d-39acc465fc3mr1531045f8f.1.1742955812883; Tue, 25 Mar 2025
 19:23:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAJeEPu++aAiF=ybq+XHEdGad+RsxR8d=tmEe5LxCOnDjWY_OFg@mail.gmail.com>
 <CAJeEPu+0EttQaFYKhGUbn2j=_nLvT-wfdBS0wQjXDkBq962g6g@mail.gmail.com>
 <8548e6ad-c21d-481c-b9c5-bd0403ee26c1@oracle.com>
 <CAJeEPu+AgjJD--boaj79Hp-QKskOm2AMqVwor_k+cwqUg_X2BA@mail.gmail.com>
In-Reply-To: <CAJeEPu+AgjJD--boaj79Hp-QKskOm2AMqVwor_k+cwqUg_X2BA@mail.gmail.com>
Date: Wed, 26 Mar 2025 10:23:22 +0800
X-Gm-Features: AQ5f1Jp8foYLnno8uuJaQNn_HJCzMD0gmZCb9mCkdYDMqWEBms1TCuNXHGSzyN8
Message-ID: <CAJeEPuJt6nhTQM7S=1A==C+5w04R2bWHAYiHgpve-AcL-1u98Q@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>, Dave Kleikamp <shaggy@kernel.org>
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hey Shaggy, Just following up -- is there anything else you
 need from me on this? Best, Dylan 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [137.132.84.20 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [137.132.84.20 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [137.132.84.20 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [137.132.84.20 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1txGQn-00030A-ID
X-Mailman-Approved-At: Wed, 26 Mar 2025 13:31:45 +0000
Subject: Re: [Jfs-discussion] General Protection Fault / KASAN:
 null-ptr-deref in jfs_ioc_trim
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
From: Dylan Wolff via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dylan Wolff <wolffd@comp.nus.edu.sg>
Cc: jfs-discussion@lists.sourceforge.net, Jiacheng Xu <stitch@zju.edu.cn>,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1382803894503551502=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============1382803894503551502==
Content-Type: multipart/alternative; boundary="0000000000001631df063135861a"

--0000000000001631df063135861a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Shaggy,

Just following up -- is there anything else you need from me on this?

Best,
Dylan

On Wed, Mar 12, 2025 at 4:02=E2=80=AFPM Dylan Wolff <wolffd@comp.nus.edu.sg=
> wrote:

> Thanks Shaggy!
>
> I've included a summary with sign-off below. Let me know if I am
> missing anything else!
>
> Also, we aren't sure if there are security implications for this
> issue. Is it possible that induced load could result in Denial of
> Service? Could you comment on whether we should initiate the process
> for a CVE?
>
> Thanks!
> Dylan
>
> ```
> [ Syzkaller Report ]
>
> Oops: general protection fault, probably for non-canonical address
> 0xdffffc0000000087: 0000 [#1
> KASAN: null-ptr-deref in range [0x0000000000000438-0x000000000000043f]
> CPU: 2 UID: 0 PID: 10614 Comm: syz-executor.0 Not tainted
> 6.13.0-rc6-gfbfd64d25c7a-dirty #1
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1
> 04/01/2014
> Sched_ext: serialise (enabled+all), task: runnable_at=3D-30ms
> RIP: 0010:jfs_ioc_trim+0x34b/0x8f0
> Code: e7 e8 59 a4 87 fe 4d 8b 24 24 4d 8d bc 24 38 04 00 00 48 8d 93
> 90 82 fe ff 4c 89 ff 31 f6
> RSP: 0018:ffffc900055f7cd0 EFLAGS: 00010206
> RAX: 0000000000000087 RBX: 00005866a9e67ff8 RCX: 000000000000000a
> RDX: 0000000000000001 RSI: 0000000000000004 RDI: 0000000000000001
> RBP: dffffc0000000000 R08: ffff88807c180003 R09: 1ffff1100f830000
> R10: dffffc0000000000 R11: ffffed100f830001 R12: 0000000000000000
> R13: 0000000000000000 R14: 0000000000000001 R15: 0000000000000438
> FS:  00007fe520225640(0000) GS:ffff8880b7e80000(0000)
> knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00005593c91b2c88 CR3: 000000014927c000 CR4: 00000000000006f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
> <TASK>
> ? __die_body+0x61/0xb0
> ? die_addr+0xb1/0xe0
> ? exc_general_protection+0x333/0x510
> ? asm_exc_general_protection+0x26/0x30
> ? jfs_ioc_trim+0x34b/0x8f0
> jfs_ioctl+0x3c8/0x4f0
> ? __pfx_jfs_ioctl+0x10/0x10
> ? __pfx_jfs_ioctl+0x10/0x10
> __se_sys_ioctl+0x269/0x350
> ? __pfx___se_sys_ioctl+0x10/0x10
> ? do_syscall_64+0xfb/0x210
> do_syscall_64+0xee/0x210
> ? syscall_exit_to_user_mode+0x1e0/0x330
> entry_SYSCALL_64_after_hwframe+0x77/0x7f
> RIP: 0033:0x7fe51f4903ad
> Code: c3 e8 a7 2b 00 00 0f 1f 80 00 00 00 00 f3 0f 1e fa 48 89 f8 48
> 89 f7 48 89 d6 48 89 ca 4d
> RSP: 002b:00007fe5202250c8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> RAX: ffffffffffffffda RBX: 00007fe51f5cbf80 RCX: 00007fe51f4903ad
> RDX: 0000000020000680 RSI: 00000000c0185879 RDI: 0000000000000005
> RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000246 R12: 00007fe520225640
> R13: 000000000000000e R14: 00007fe51f44fca0 R15: 00007fe52021d000
> </TASK>
> Modules linked in:
> ---[ end trace 0000000000000000 ]---
> RIP: 0010:jfs_ioc_trim+0x34b/0x8f0
> Code: e7 e8 59 a4 87 fe 4d 8b 24 24 4d 8d bc 24 38 04 00 00 48 8d 93
> 90 82 fe ff 4c 89 ff 31 f6
> RSP: 0018:ffffc900055f7cd0 EFLAGS: 00010206
> RAX: 0000000000000087 RBX: 00005866a9e67ff8 RCX: 000000000000000a
> RDX: 0000000000000001 RSI: 0000000000000004 RDI: 0000000000000001
> RBP: dffffc0000000000 R08: ffff88807c180003 R09: 1ffff1100f830000
> R10: dffffc0000000000 R11: ffffed100f830001 R12: 0000000000000000
> R13: 0000000000000000 R14: 0000000000000001 R15: 0000000000000438
> FS:  00007fe520225640(0000) GS:ffff8880b7e80000(0000)
> knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00005593c91b2c88 CR3: 000000014927c000 CR4: 00000000000006f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Kernel panic - not syncing: Fatal exception
>
> [ Analysis ]
>
> We believe that we have found a concurrency bug in the `fs/jfs` module
> that results in a null pointer dereference. There is a closely related
> issue which has been fixed:
>
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3Dd6c1b3599b2feb5c7291f5ac3a36e5fa7cedb234
>
> ... but, unfortunately, the accepted patch appears to still be
> susceptible to a null pointer dereference under some interleavings.
>
> To trigger the bug, we think that `JFS_SBI(ipbmap->i_sb)->bmap` is set
> to NULL in `dbFreeBits` and then dereferenced in `jfs_ioc_trim`. This
> bug manifests quite rarely under normal circumstances, but is
> triggereable from a syz-program.
>
> Reported-and-tested-by: Dylan J. Wolff<wolffd@comp.nus.edu.sg>
> Reported-and-tested-by: Jiacheng Xu <stitch@zju.edu.cn>
> Signed-off-by: Dylan J. Wolff<wolffd@comp.nus.edu.sg>
> Signed-off-by: Jiacheng Xu <stitch@zju.edu.cn>
> ---
>  fs/jfs/jfs_discard.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletions(-)
>
> diff --git a/fs/jfs/jfs_discard.c b/fs/jfs/jfs_discard.c
> index 5f4b30503..4b660296c 100644
> --- a/fs/jfs/jfs_discard.c
> +++ b/fs/jfs/jfs_discard.c
> @@ -86,7 +86,8 @@ int jfs_ioc_trim(struct inode *ip, struct fstrim_range
> *range)
>         down_read(&sb->s_umount);
>         bmp =3D JFS_SBI(ip->i_sb)->bmap;
>
> -       if (minlen > bmp->db_agsize ||
> +       if (bmp =3D=3D NULL ||
> +           minlen > bmp->db_agsize ||
>             start >=3D bmp->db_mapsize ||
>             range->len < sb->s_blocksize) {
>                 up_read(&sb->s_umount);
> ```
>
>
> On Tue, Mar 11, 2025 at 11:48=E2=80=AFPM Dave Kleikamp <dave.kleikamp@ora=
cle.com>
> wrote:
> >
> > On 3/11/25 1:47AM, Dylan Wolff wrote:
> >
> > Hi all,
> >
> > Just checking in on this report. Is there another email list I should b=
e
> using for this issue? Can anyone confirm whether or not our fix is
> acceptable?
> >
> > This is the right list. Somehow I missed this one and/or forgot it.
> >
> > The patch looks good to me. Can you re-send it with a Signed-off-by: ?
> >
> > Thank you!
> >
> > Shaggy
> >
> >
> > Thanks again!
> > Dylan
> >
> > On Tue, Jan 7, 2025 at 4:53=E2=80=AFPM Dylan Wolff <wolffd@comp.nus.edu=
.sg>
> wrote:
> >>
> >> Hello kernel developers!
> >>
> >> We believe that we have found a concurrency bug in the `fs/jfs` module
> that results in a null pointer dereference. There is a closely related
> issue which has been fixed:
> >>
> >>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3Dd6c1b3599b2feb5c7291f5ac3a36e5fa7cedb234
> >>
> >> ... but, unfortunately, the accepted patch appears to still be
> susceptible to a null pointer dereference under some interleavings.
> >>
> >> To trigger the bug, we think that `JFS_SBI(ipbmap->i_sb)->bmap` is set
> to NULL in `dbFreeBits` and then dereferenced in `jfs_ioc_trim`. This bug
> manifests quite rarely under normal circumstances, but is triggereable wi=
th
> the attached syz program. We've also attached a trace of an execution tha=
t
> leads to the crash (thread id:location). If needed, we can share our setu=
p
> in detail which reproduces the bug with very high probability.
> >>
> >> Here's a proposed patch:
> >>
> >> ```
> >> diff --git a/fs/jfs/jfs_discard.c b/fs/jfs/jfs_discard.c
> >> index 5f4b30503..4b660296c 100644
> >> --- a/fs/jfs/jfs_discard.c
> >> +++ b/fs/jfs/jfs_discard.c
> >> @@ -86,7 +86,8 @@ int jfs_ioc_trim(struct inode *ip, struct
> fstrim_range *range)
> >>         down_read(&sb->s_umount);
> >>         bmp =3D JFS_SBI(ip->i_sb)->bmap;
> >>
> >> -       if (minlen > bmp->db_agsize ||
> >> +       if (bmp =3D=3D NULL ||
> >> +           minlen > bmp->db_agsize ||
> >>             start >=3D bmp->db_mapsize ||
> >>             range->len < sb->s_blocksize) {
> >>                 up_read(&sb->s_umount);
> >> ```
> >>
> >> Applying this patch to our kernel locally appears to resolve the issue=
.
> >>
> >> If this looks like it might be a security vulnerability, please let us
> know if there is anything we need to provide for the CVE process.
> >>
> >> We would also appreciate attribution for the discovery / fix if
> applicable:
> >> >Reported-by: Jiacheng Xu<stitch@zju.edu.cn>,  Dylan Wolff <
> wolffd@comp.nus.edu.sg>
> >>
> >> Environment:
> >>      Qemu (invocation attached) running a Syzkaller image on an Ubuntu
> 22.04.4 LTS host
> >> Kernel:
> >>      HEAD commit: fbfd64d25
> >>      tree: upstream
> >>      compiler toolchain: clang-17
> >>
> >> Thanks!
> >> Dylan
> >>
>

--0000000000001631df063135861a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Shaggy,<br><br>Just following up -- is there anything =
else you need from me on this?<br><br>Best,<br>Dylan</div><br><div class=3D=
"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Wed, Mar 12, 2025 at 4:02=E2=80=AFPM Dylan Wolff &lt;<a href=3D"mailto:wo=
lffd@comp.nus.edu.sg">wolffd@comp.nus.edu.sg</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">Thanks Shaggy!<br>
<br>
I&#39;ve included a summary with sign-off below. Let me know if I am<br>
missing anything else!<br>
<br>
Also, we aren&#39;t sure if there are security implications for this<br>
issue. Is it possible that induced load could result in Denial of<br>
Service? Could you comment on whether we should initiate the process<br>
for a CVE?<br>
<br>
Thanks!<br>
Dylan<br>
<br>
```<br>
[ Syzkaller Report ]<br>
<br>
Oops: general protection fault, probably for non-canonical address<br>
0xdffffc0000000087: 0000 [#1<br>
KASAN: null-ptr-deref in range [0x0000000000000438-0x000000000000043f]<br>
CPU: 2 UID: 0 PID: 10614 Comm: syz-executor.0 Not tainted<br>
6.13.0-rc6-gfbfd64d25c7a-dirty #1<br>
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/=
2014<br>
Sched_ext: serialise (enabled+all), task: runnable_at=3D-30ms<br>
RIP: 0010:jfs_ioc_trim+0x34b/0x8f0<br>
Code: e7 e8 59 a4 87 fe 4d 8b 24 24 4d 8d bc 24 38 04 00 00 48 8d 93<br>
90 82 fe ff 4c 89 ff 31 f6<br>
RSP: 0018:ffffc900055f7cd0 EFLAGS: 00010206<br>
RAX: 0000000000000087 RBX: 00005866a9e67ff8 RCX: 000000000000000a<br>
RDX: 0000000000000001 RSI: 0000000000000004 RDI: 0000000000000001<br>
RBP: dffffc0000000000 R08: ffff88807c180003 R09: 1ffff1100f830000<br>
R10: dffffc0000000000 R11: ffffed100f830001 R12: 0000000000000000<br>
R13: 0000000000000000 R14: 0000000000000001 R15: 0000000000000438<br>
FS:=C2=A0 00007fe520225640(0000) GS:ffff8880b7e80000(0000) knlGS:0000000000=
000000<br>
CS:=C2=A0 0010 DS: 0000 ES: 0000 CR0: 0000000080050033<br>
CR2: 00005593c91b2c88 CR3: 000000014927c000 CR4: 00000000000006f0<br>
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000<br>
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400<br>
Call Trace:<br>
&lt;TASK&gt;<br>
? __die_body+0x61/0xb0<br>
? die_addr+0xb1/0xe0<br>
? exc_general_protection+0x333/0x510<br>
? asm_exc_general_protection+0x26/0x30<br>
? jfs_ioc_trim+0x34b/0x8f0<br>
jfs_ioctl+0x3c8/0x4f0<br>
? __pfx_jfs_ioctl+0x10/0x10<br>
? __pfx_jfs_ioctl+0x10/0x10<br>
__se_sys_ioctl+0x269/0x350<br>
? __pfx___se_sys_ioctl+0x10/0x10<br>
? do_syscall_64+0xfb/0x210<br>
do_syscall_64+0xee/0x210<br>
? syscall_exit_to_user_mode+0x1e0/0x330<br>
entry_SYSCALL_64_after_hwframe+0x77/0x7f<br>
RIP: 0033:0x7fe51f4903ad<br>
Code: c3 e8 a7 2b 00 00 0f 1f 80 00 00 00 00 f3 0f 1e fa 48 89 f8 48<br>
89 f7 48 89 d6 48 89 ca 4d<br>
RSP: 002b:00007fe5202250c8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010<br>
RAX: ffffffffffffffda RBX: 00007fe51f5cbf80 RCX: 00007fe51f4903ad<br>
RDX: 0000000020000680 RSI: 00000000c0185879 RDI: 0000000000000005<br>
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000<br>
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fe520225640<br>
R13: 000000000000000e R14: 00007fe51f44fca0 R15: 00007fe52021d000<br>
&lt;/TASK&gt;<br>
Modules linked in:<br>
---[ end trace 0000000000000000 ]---<br>
RIP: 0010:jfs_ioc_trim+0x34b/0x8f0<br>
Code: e7 e8 59 a4 87 fe 4d 8b 24 24 4d 8d bc 24 38 04 00 00 48 8d 93<br>
90 82 fe ff 4c 89 ff 31 f6<br>
RSP: 0018:ffffc900055f7cd0 EFLAGS: 00010206<br>
RAX: 0000000000000087 RBX: 00005866a9e67ff8 RCX: 000000000000000a<br>
RDX: 0000000000000001 RSI: 0000000000000004 RDI: 0000000000000001<br>
RBP: dffffc0000000000 R08: ffff88807c180003 R09: 1ffff1100f830000<br>
R10: dffffc0000000000 R11: ffffed100f830001 R12: 0000000000000000<br>
R13: 0000000000000000 R14: 0000000000000001 R15: 0000000000000438<br>
FS:=C2=A0 00007fe520225640(0000) GS:ffff8880b7e80000(0000) knlGS:0000000000=
000000<br>
CS:=C2=A0 0010 DS: 0000 ES: 0000 CR0: 0000000080050033<br>
CR2: 00005593c91b2c88 CR3: 000000014927c000 CR4: 00000000000006f0<br>
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000<br>
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400<br>
Kernel panic - not syncing: Fatal exception<br>
<br>
[ Analysis ]<br>
<br>
We believe that we have found a concurrency bug in the `fs/jfs` module<br>
that results in a null pointer dereference. There is a closely related<br>
issue which has been fixed:<br>
<br>
<a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
it/commit/?id=3Dd6c1b3599b2feb5c7291f5ac3a36e5fa7cedb234" rel=3D"noreferrer=
" target=3D"_blank">https://git.kernel.org/pub/scm/linux/kernel/git/torvald=
s/linux.git/commit/?id=3Dd6c1b3599b2feb5c7291f5ac3a36e5fa7cedb234</a><br>
<br>
... but, unfortunately, the accepted patch appears to still be<br>
susceptible to a null pointer dereference under some interleavings.<br>
<br>
To trigger the bug, we think that `JFS_SBI(ipbmap-&gt;i_sb)-&gt;bmap` is se=
t<br>
to NULL in `dbFreeBits` and then dereferenced in `jfs_ioc_trim`. This<br>
bug manifests quite rarely under normal circumstances, but is<br>
triggereable from a syz-program.<br>
<br>
Reported-and-tested-by: Dylan J. Wolff&lt;<a href=3D"mailto:wolffd@comp.nus=
.edu.sg" target=3D"_blank">wolffd@comp.nus.edu.sg</a>&gt;<br>
Reported-and-tested-by: Jiacheng Xu &lt;<a href=3D"mailto:stitch@zju.edu.cn=
" target=3D"_blank">stitch@zju.edu.cn</a>&gt;<br>
Signed-off-by: Dylan J. Wolff&lt;<a href=3D"mailto:wolffd@comp.nus.edu.sg" =
target=3D"_blank">wolffd@comp.nus.edu.sg</a>&gt;<br>
Signed-off-by: Jiacheng Xu &lt;<a href=3D"mailto:stitch@zju.edu.cn" target=
=3D"_blank">stitch@zju.edu.cn</a>&gt;<br>
---<br>
=C2=A0fs/jfs/jfs_discard.c | 3 ++-<br>
=C2=A01 file changed, 2 insertions(+), 1 deletions(-)<br>
<br>
diff --git a/fs/jfs/jfs_discard.c b/fs/jfs/jfs_discard.c<br>
index 5f4b30503..4b660296c 100644<br>
--- a/fs/jfs/jfs_discard.c<br>
+++ b/fs/jfs/jfs_discard.c<br>
@@ -86,7 +86,8 @@ int jfs_ioc_trim(struct inode *ip, struct fstrim_range *r=
ange)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 down_read(&amp;sb-&gt;s_umount);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bmp =3D JFS_SBI(ip-&gt;i_sb)-&gt;bmap;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (minlen &gt; bmp-&gt;db_agsize ||<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (bmp =3D=3D NULL ||<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0minlen &gt; bmp-&gt;db_agsize ||<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 start &gt;=3D bmp-&gt;db_mapsize =
||<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 range-&gt;len &lt; sb-&gt;s_block=
size) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 up_read(&amp;sb-&gt=
;s_umount);<br>
```<br>
<br>
<br>
On Tue, Mar 11, 2025 at 11:48=E2=80=AFPM Dave Kleikamp &lt;<a href=3D"mailt=
o:dave.kleikamp@oracle.com" target=3D"_blank">dave.kleikamp@oracle.com</a>&=
gt; wrote:<br>
&gt;<br>
&gt; On 3/11/25 1:47AM, Dylan Wolff wrote:<br>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt; Just checking in on this report. Is there another email list I should =
be using for this issue? Can anyone confirm whether or not our fix is accep=
table?<br>
&gt;<br>
&gt; This is the right list. Somehow I missed this one and/or forgot it.<br=
>
&gt;<br>
&gt; The patch looks good to me. Can you re-send it with a Signed-off-by: ?=
<br>
&gt;<br>
&gt; Thank you!<br>
&gt;<br>
&gt; Shaggy<br>
&gt;<br>
&gt;<br>
&gt; Thanks again!<br>
&gt; Dylan<br>
&gt;<br>
&gt; On Tue, Jan 7, 2025 at 4:53=E2=80=AFPM Dylan Wolff &lt;<a href=3D"mail=
to:wolffd@comp.nus.edu.sg" target=3D"_blank">wolffd@comp.nus.edu.sg</a>&gt;=
 wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hello kernel developers!<br>
&gt;&gt;<br>
&gt;&gt; We believe that we have found a concurrency bug in the `fs/jfs` mo=
dule that results in a null pointer dereference. There is a closely related=
 issue which has been fixed:<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/torvald=
s/linux.git/commit/?id=3Dd6c1b3599b2feb5c7291f5ac3a36e5fa7cedb234" rel=3D"n=
oreferrer" target=3D"_blank">https://git.kernel.org/pub/scm/linux/kernel/gi=
t/torvalds/linux.git/commit/?id=3Dd6c1b3599b2feb5c7291f5ac3a36e5fa7cedb234<=
/a><br>
&gt;&gt;<br>
&gt;&gt; ... but, unfortunately, the accepted patch appears to still be sus=
ceptible to a null pointer dereference under some interleavings.<br>
&gt;&gt;<br>
&gt;&gt; To trigger the bug, we think that `JFS_SBI(ipbmap-&gt;i_sb)-&gt;bm=
ap` is set to NULL in `dbFreeBits` and then dereferenced in `jfs_ioc_trim`.=
 This bug manifests quite rarely under normal circumstances, but is trigger=
eable with the attached syz program. We&#39;ve also attached a trace of an =
execution that leads to the crash (thread id:location). If needed, we can s=
hare our setup in detail which reproduces the bug with very high probabilit=
y.<br>
&gt;&gt;<br>
&gt;&gt; Here&#39;s a proposed patch:<br>
&gt;&gt;<br>
&gt;&gt; ```<br>
&gt;&gt; diff --git a/fs/jfs/jfs_discard.c b/fs/jfs/jfs_discard.c<br>
&gt;&gt; index 5f4b30503..4b660296c 100644<br>
&gt;&gt; --- a/fs/jfs/jfs_discard.c<br>
&gt;&gt; +++ b/fs/jfs/jfs_discard.c<br>
&gt;&gt; @@ -86,7 +86,8 @@ int jfs_ioc_trim(struct inode *ip, struct fstrim=
_range *range)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0down_read(&amp;sb-&gt;s_umount);<=
br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bmp =3D JFS_SBI(ip-&gt;i_sb)-&gt;=
bmap;<br>
&gt;&gt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (minlen &gt; bmp-&gt;db_agsize ||<b=
r>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (bmp =3D=3D NULL ||<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0minlen &gt; bmp-&gt;db_a=
gsize ||<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0start &gt;=3D bmp-&=
gt;db_mapsize ||<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0range-&gt;len &lt; =
sb-&gt;s_blocksize) {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0up_re=
ad(&amp;sb-&gt;s_umount);<br>
&gt;&gt; ```<br>
&gt;&gt;<br>
&gt;&gt; Applying this patch to our kernel locally appears to resolve the i=
ssue.<br>
&gt;&gt;<br>
&gt;&gt; If this looks like it might be a security vulnerability, please le=
t us know if there is anything we need to provide for the CVE process.<br>
&gt;&gt;<br>
&gt;&gt; We would also appreciate attribution for the discovery / fix if ap=
plicable:<br>
&gt;&gt; &gt;Reported-by: Jiacheng Xu&lt;<a href=3D"mailto:stitch@zju.edu.c=
n" target=3D"_blank">stitch@zju.edu.cn</a>&gt;,=C2=A0 Dylan Wolff &lt;<a hr=
ef=3D"mailto:wolffd@comp.nus.edu.sg" target=3D"_blank">wolffd@comp.nus.edu.=
sg</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt; Environment:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Qemu (invocation attached) running a Syzkaller=
 image on an Ubuntu 22.04.4 LTS host<br>
&gt;&gt; Kernel:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 HEAD commit: fbfd64d25<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 tree: upstream<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 compiler toolchain: clang-17<br>
&gt;&gt;<br>
&gt;&gt; Thanks!<br>
&gt;&gt; Dylan<br>
&gt;&gt;<br>
</blockquote></div>

--0000000000001631df063135861a--


--===============1382803894503551502==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1382803894503551502==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============1382803894503551502==--

