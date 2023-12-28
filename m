Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96352820001
	for <lists+jfs-discussion@lfdr.de>; Fri, 29 Dec 2023 15:40:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rJE2J-0004md-AE;
	Fri, 29 Dec 2023 14:40:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1rIxaQ-0001FG-Lv
 for jfs-discussion@lists.sourceforge.net;
 Thu, 28 Dec 2023 21:06:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2r+OKMrq4Wrqo/NZfHJfZWUTrW17FUHZw+oyY4wRjp0=; b=TLDfIhtdSdCVkFEFENjghhZffh
 N1PGToL9twWqN5lu/kLiH3ScWUGf3etdd9jLtd08jb9Jfr0FTEcsfeu5c4dF5cALrPNE/21+9B9vF
 iPzoScD9Xw24h9M09MZ0BtQ6NoFQIdp8d9eoO6ULWrQwWsgqh3pD8MyrWJzKTPVDtNZ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2r+OKMrq4Wrqo/NZfHJfZWUTrW17FUHZw+oyY4wRjp0=; b=gJqCUJKDCGm7sYGtW+fF7F0bux
 9NA4pe8KgWZZcaDz57Gm/hiRy9YipTpptxKATdiOcNoN5adC1DpIIuUrRMjFSU0YCaGhXs7cfhLxe
 8+DJ3820AMNGJ1gOV/YsbsEA6jvFsHQrsaNVK2A4NpoL9un8+2WT6/9RL5c30vzni52U=;
Received: from mail-ej1-f47.google.com ([209.85.218.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rIxaJ-00036R-OK for jfs-discussion@lists.sourceforge.net;
 Thu, 28 Dec 2023 21:06:38 +0000
Received: by mail-ej1-f47.google.com with SMTP id
 a640c23a62f3a-a2358a75b69so1102974866b.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 28 Dec 2023 13:06:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google; t=1703797580; x=1704402380;
 darn=lists.sourceforge.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=2r+OKMrq4Wrqo/NZfHJfZWUTrW17FUHZw+oyY4wRjp0=;
 b=Y/NN7JMW9vonnBJFj+Dd8DvTm39L/0MkazevXvXQTnRYUMtzVFboyW4aawD+86tl3c
 DtrlTCztHFcJXM546gl5sSnjb1PKwQZh2vcNa7rnF1vqFWNtq7vEsiezSQaxUt1b36SA
 IACuvBZFA4U8CEHjrhnItId/unnOrPfTeSp0c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1703797580; x=1704402380;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2r+OKMrq4Wrqo/NZfHJfZWUTrW17FUHZw+oyY4wRjp0=;
 b=t0hBnTsJ0bZpf+W2t5rJh1CKJIGDpRv6TgVQQWfiytTcQEmGsj55enpH/zFauvvrtR
 CJopBy8W/qs1/WPpPo8jyAF+aaVZAbO7ykEZdZ0CsA5a+ERmOQYuooJx8OqIu/6Adyzt
 RiyQQg7M9Zb/96LjmMxrGFE5+oPF/fiCi5aP1uLLyTEH234T4IRj6WTlYNSijt6eqOAY
 2DrHuzK38FVl3kQIRX8x4uhBzmSCqYtDGuEWTKI6m+bxtopPVUMsCOrAtowvNNIPTngi
 zeqL6L2i1JnPwqCeXkG0LeoJcmIq1KJd23itml48yB9rtrdXqU8/R7xp7e/5erYV6UxR
 QPoQ==
X-Gm-Message-State: AOJu0YyRLtBdUm6tvWhuqg2YZjHtpupm0G903dounjn7a3M1YceOyoUI
 UdH0MIg/1BnKCTVkRdnltdj1szikSElW7weFfc35GFuIUG02k42V
X-Google-Smtp-Source: AGHT+IG09vPXqsmjsUBswNeJXuijppyYi4mAuk8ChttNeVUrFhbbnRwL4ZS9tF10b6qrLplHQWRWNw==
X-Received: by 2002:a17:906:7399:b0:a1d:2f59:81a4 with SMTP id
 f25-20020a170906739900b00a1d2f5981a4mr10039933ejl.62.1703797580059; 
 Thu, 28 Dec 2023 13:06:20 -0800 (PST)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com.
 [209.85.218.48]) by smtp.gmail.com with ESMTPSA id
 en18-20020a17090728d200b00a233573aa21sm7753153ejc.222.2023.12.28.13.06.19
 for <jfs-discussion@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Dec 2023 13:06:19 -0800 (PST)
Received: by mail-ej1-f48.google.com with SMTP id
 a640c23a62f3a-a2370535060so1310686266b.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 28 Dec 2023 13:06:19 -0800 (PST)
X-Received: by 2002:a17:906:a889:b0:a26:9977:f7f4 with SMTP id
 ha9-20020a170906a88900b00a269977f7f4mr10425452ejb.28.1703797579063; Thu, 28
 Dec 2023 13:06:19 -0800 (PST)
MIME-Version: 1.0
References: <3d428c1b-c11d-4f9a-8f0d-85daf0c2a4cb.bugreport@ubisectech.com>
In-Reply-To: <3d428c1b-c11d-4f9a-8f0d-85daf0c2a4cb.bugreport@ubisectech.com>
Date: Thu, 28 Dec 2023 13:06:02 -0800
X-Gmail-Original-Message-ID: <CAHk-=wid2p3NXUtg=iDo1B3urpJT4OWo7-o5OaQ2A6qRCpa39A@mail.gmail.com>
Message-ID: <CAHk-=wid2p3NXUtg=iDo1B3urpJT4OWo7-o5OaQ2A6qRCpa39A@mail.gmail.com>
To: Ubisectech Sirius <bugreport@ubisectech.com>,
 jfs-discussion@lists.sourceforge.net
X-Spam-Score: -3.2 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 27 Dec 2023 at 23:42,
 Ubisectech Sirius <bugreport@ubisectech.com>
 wrote: > > 1. Vulnerability Description: BUG: unable to handle kernel NULL
 pointer dereference in write_special_inodes A regular NULL pointer dereference
 isn't a security bugs, please just report them the normal channels. 
 Content analysis details:   (-3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.47 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.218.47 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -3.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rIxaJ-00036R-OK
X-Mailman-Approved-At: Fri, 29 Dec 2023 14:40:30 +0000
Subject: Re: [Jfs-discussion] poc.c
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
From: Linus Torvalds via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Linus Torvalds <torvalds@linuxfoundation.org>
Cc: shaggy <shaggy@kernel.org>, security <security@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, 27 Dec 2023 at 23:42, Ubisectech Sirius
<bugreport@ubisectech.com> wrote:
>
> 1. Vulnerability Description: BUG: unable to handle kernel NULL pointer dereference in write_special_inodes

A regular NULL pointer dereference isn't a security bugs, please just
report them the normal channels.

> 2. stack dump:
>
> [  119.560427][ T7975] general protection fault, probably for non-canonical address 0xdffffc0000000006: 0000 [#1] PREEMPT SMP KASAN
> [  119.561982][ T7975] KASAN: null-ptr-deref in range [0x0000000000000030-0x0000000000000037]
> [  119.563081][ T7975] CPU: 1 PID: 7975 Comm: poc Not tainted 6.7.0-rc7-00003-gfbafc3e621c3 #3
> [  119.564139][ T7975] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
> [  119.565257][ T7975] RIP: 0010:write_special_inodes+0xa6/0x170
> [  119.565951][ T7975] Code: 8b 7d 30 41 ff d4 48 8d 7b 28 48 89 f8 48 c1 e8 03 80 3c 28 00 0f 85 ab 00 00 00 4c 8b 6b 28 49 8d 7d 30 48 89 f8 48 c1 e8 03 <80> 3c 28 00 0f 85 88 00 00 00 49 8b 7d 30 41 ff d4 48 8d bb b0 00

Again, please run the dumps through the kernel dump decoder in

    ./scripts/decode_stacktrace.sh

so that it has line numbers etc,.

In this case, I was able to guess the exact issue with the code decoding: it's

              writer(sbi->ipimap->i_mapping);

where sbi->ipimap is NULL.

> [  119.587130][ T7975]  lmLogSync+0x46a/0x7e0
> [  119.590386][ T7975]  jfs_syncpt+0x89/0xa0
> [  119.591038][ T7975]  jfs_sync_fs+0x80/0xa0
> [  119.592213][ T7975]  sync_filesystem+0x105/0x280
> [  119.592868][ T7975]  generic_shutdown_super+0x7a/0x3c0
> [  119.593617][ T7975]  kill_block_super+0x37/0x90
> [  119.594282][ T7975]  deactivate_locked_super+0xb6/0x190
> [  119.595007][ T7975]  deactivate_super+0xad/0xd0
> [  119.595645][ T7975]  cleanup_mnt+0x2df/0x430
> [  119.596262][ T7975]  task_work_run+0x164/0x250
> [  119.598171][ T7975]  exit_to_user_mode_prepare+0x215/0x240
> [  119.598906][ T7975]  syscall_exit_to_user_mode+0x19/0x60

At a guess, it looks like the super-block has been added to the log
list too early, before it's been fully initialized, and then some
error happened. But I don't know the jfs code, so let's see if
somebody says "oh, it's XYZ".

Adding the jfs list to the participants, to get a bit wider audience.

                 Linus


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
