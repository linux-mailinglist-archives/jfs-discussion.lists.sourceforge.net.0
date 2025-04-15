Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D36A91F69
	for <lists+jfs-discussion@lfdr.de>; Thu, 17 Apr 2025 16:21:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u5Q7D-0005GG-Lr;
	Thu, 17 Apr 2025 14:21:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3de39ZwkbAI4AGH2s33w9s770v.y66y3wCAw9u65Bw5B.u64@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1u4YmY-0005Ln-GU for jfs-discussion@lists.sourceforge.net;
 Tue, 15 Apr 2025 05:24:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JygxYQSn5S5PkFXpEtblNoqUiwTfAnSS1oE1AlV7IDU=; b=gUxHFgF4Lb4i3yZYZ3STrRlg/7
 cnzUIzPXCpCNKjhkeYJgZ1aVSzwIXIdIU/3jx86JZkbTvZ5ZADqyXAX/Nz8/zEAFPuTODXmngyRdn
 rtrcOGHjb1uzErE8XrIF6LMNVQzMvBMl8vndmz++S726IwgQqxpbFOA+F4eNMrTsfrKY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JygxYQSn5S5PkFXpEtblNoqUiwTfAnSS1oE1AlV7IDU=; b=D
 7YEgTq43RrcaOwe+YuA/ep2OadX5aIh2Q0C3B2gi2j7b+4qluWAmzuhJffLZ9QN51d6VRN/dlDAwe
 9rumGf6jpJ2g0PezS4+8iUhl3mc9J27bCnMieDe0Tho3ZD4tOqiiHVKXNsMdywIk2CiCe4BNIWLzY
 vIUXKcdCisXKR1Zg=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u4YmI-0004KI-Uu for jfs-discussion@lists.sourceforge.net;
 Tue, 15 Apr 2025 05:24:26 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-85e7f5129d5so470226539f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 14 Apr 2025 22:24:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744694645; x=1745299445;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JygxYQSn5S5PkFXpEtblNoqUiwTfAnSS1oE1AlV7IDU=;
 b=XbRCL5AG65ImOtm8cgSouEvgIPmLhXwZFhmnoEGWavrZ5traUi+1WYN1zHpWLQgKvE
 WtbvuVuaI4u9e/MlmPPKpUkYVwroNxpxupGbJ2eWu8UdY72T99coJFv0gCeUpS81ajb9
 gfPKFf6Ed40+hT8+yRnbnwDm364yDfgEKLIpsNNpVHUuXCfhxFiJ3oDnUUk2qUFnaVn+
 DTLkO20zT3Q2d1RH1t22eF4srszzExUStTtRXgulsRKPTY+OJ83yL0gnMYMMmkZNbyCu
 DNiBHI1f60mStfiWs+V7p+M3WZS9fRFpJbqeFU32SkBZsJVKy+XLJAMAYau63YHtVQgy
 nwcQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX//AadmR1nEa7uW0y1x2/NmXv6Cjp6XY2st5u2RnkK054By3SiUVtLKixYd7dPHuvaubx/+BCvXaa7/ebVAA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxflECdkMzu4oCZota5x3XfHk6gSAofUqR/glpvDLpSqWqhsgs+
 qYcL3hHk4qnwTdB2h5l3WJlmIkRIJ/kUDvcfHkKlUIXs62XIWY/q5lXrwmukKFq3rUNM13gjvLr
 zsb0wuPRIUroXvJ7HiZa5QwBRTuPZUHYeGtEv60Kdl0ccA2Zrwf1kBzE=
X-Google-Smtp-Source: AGHT+IHkGF/DNEiT+aLRvJrtGD3TMmt6g+VZAgo4IOdzTge5lAzF0wNs5SstRvp3aDM3SdsK6ersYe+ZTd/PT3Cr9d7sn5DYrimQ
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:16c9:b0:3d4:6f9d:c0d0 with SMTP id
 e9e14a558f8ab-3d7ec1f389cmr133822645ab.8.1744694645312; Mon, 14 Apr 2025
 22:24:05 -0700 (PDT)
Date: Mon, 14 Apr 2025 22:24:05 -0700
In-Reply-To: <cbbffb90-c342-4738-b7cd-76db8fd44556@amd.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67fded75.050a0220.3483fc.0045.GAE@google.com>
To: akpm@linux-foundation.org, brauner@kernel.org, 
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 linux-mm@kvack.org, shaggy@kernel.org, shivankg@amd.com, 
 syzkaller-bugs@googlegroups.com, willy@infradead.org
X-Spam-Score: 5.5 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch but the reproducer
 is still triggering an issue: unregister_netdevice: waiting for DEV to become
 free unregister_netdevice: waiting for batadv0 to become free. Usage count
 = 3 Content analysis details:   (5.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.72 listed in sa-accredit.habeas.com]
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [209.85.166.72 listed in psbl.surriel.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.72 listed in bl.score.senderscore.com]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1u4YmI-0004KI-Uu
X-Mailman-Approved-At: Thu, 17 Apr 2025 14:21:19 +0000
Subject: Re: [Jfs-discussion] [syzbot] [mm?] WARNING in move_to_new_folio
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
From: syzbot via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: syzbot <syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot has tested the proposed patch but the reproducer is still triggering an issue:
unregister_netdevice: waiting for DEV to become free

unregister_netdevice: waiting for batadv0 to become free. Usage count = 3


Tested on:

commit:         01c6df60 Add linux-next specific files for 20250411
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
console output: https://syzkaller.appspot.com/x/log.txt?x=1142f0cc580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=db03cefa26ecf825
dashboard link: https://syzkaller.appspot.com/bug?extid=8bb6fd945af4e0ad9299
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
patch:          https://syzkaller.appspot.com/x/patch.diff?x=107a60cc580000



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
