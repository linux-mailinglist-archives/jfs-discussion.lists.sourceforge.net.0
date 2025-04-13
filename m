Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A249CA87607
	for <lists+jfs-discussion@lfdr.de>; Mon, 14 Apr 2025 05:07:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u4AAG-0005jj-M2;
	Mon, 14 Apr 2025 03:07:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3IzD8ZwkbALox34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1u457o-00061j-EY for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Apr 2025 21:44:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J1txnWgtU8RQyOa828P2LoRE5i4oIfHS8ZwXuHV/jyU=; b=RowPvtdmcQvOgJKT3we6nmZUX5
 Zd86qKSwnxl1VdW6uXzQn7Xe/JUoxEWNKAhYt9iQ7tv81TPINPoXpMvyK1lc//CY/vLQSx/ye01co
 hvbiksLYXIjlUxUQ8cqmixg/zxtj5iQ2CFq2euzbKuz5AF33OAyoePKZzeTmaJv76sk0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=J1txnWgtU8RQyOa828P2LoRE5i4oIfHS8ZwXuHV/jyU=; b=K
 JiwKwYtobddMcal4gSzUX0ZTV7N/4hOxTX0h+C/nT9Gm2ekiYyMdTQXShWbeqPJitkUb9fi+eTckY
 xH20SHS6TpCz8OyeDK9KgBRGQOspZ8sHz4qSCOsofozKLBLT03LvgftuLE2kOGXrcDTwi2h5D/e0n
 2i6Y2oI8rUUhcULY=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u457Z-0003yT-IK for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Apr 2025 21:44:25 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-3d702175925so37646525ab.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 13 Apr 2025 14:44:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744580644; x=1745185444;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=J1txnWgtU8RQyOa828P2LoRE5i4oIfHS8ZwXuHV/jyU=;
 b=kcJBNoIOQAbHZd/vb2XjaWqHZ/iWZLOr/H1bkaa5Za2xi4XQZBrHXI59nnq9j9AEM0
 HYv95hPt+ksgLKFrlxoSIaqTY/uEVz4pJGErTb7pXmXu16R8Hzx8W6L5mm2Uq/D6tgwq
 35G8AvzznlRDUGyIqDpj6C1QL0C+xjOQ1ggum4qLsJoalwKSHSTniHakONVESPRWTnmF
 MM6vz9p9KZQqYI0qG6Qj+XDU7smI7pYCTRWy3a45SfeU8SVmzYRgdzY/yM2c/gPH3iJj
 JO9KYT6ZSwaezzUOD/Vk3hVyiQK8WJGAtERKhQLNzlNFdUvij+8PwTA+7HmGqC+FMMBU
 8QeA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXB3iepQ8FY9N7Un+TAzDeK7ECpT9qlELvNXZs1uYjKjqjuY2cqR6kGFlKy2KQDyuffxi+OUBL8edmd2IgV5g==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yyh/ilAygx788cTp27Q2Xkowd1tgElG+rf80E/Gtj470ZdXyqMP
 H4iMTwwo2RlDsgOyOA6KnnnwoMTJgajECFD39jEcGNja+TUfWu6r52Q6ARx4DuE1aWfKT8mDf/x
 KVgDmm0InVhm4cSj+WzBx8kgglgj4jVL9A/qCMP/wEddyV04USI+4+Ww=
X-Google-Smtp-Source: AGHT+IGJsxAFKJy/nRo7m/UlNnZ9fULeDSQsk2Dq6/E68LZo2qm0BqMPAJtKGkj5mqLMq5eFpwR+DwA0uaNgHXh4JVuq9QJwFn4R
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:16c9:b0:3d4:6f9d:c0d0 with SMTP id
 e9e14a558f8ab-3d7ec1f389cmr90320285ab.8.1744580643800; Sun, 13 Apr 2025
 14:44:03 -0700 (PDT)
Date: Sun, 13 Apr 2025 14:44:03 -0700
In-Reply-To: <67faff52.050a0220.379d84.001b.GAE@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67fc3023.050a0220.2970f9.0361.GAE@google.com>
To: akpm@linux-foundation.org, brauner@kernel.org, 
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 linux-mm@kvack.org, shaggy@kernel.org, shivankg@amd.com, 
 syzkaller-bugs@googlegroups.com, willy@infradead.org
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot has bisected this issue to: commit
 7ee3647243e5c4a9d74d4c7ec621eac75c6d37ea
 Author: Matthew Wilcox (Oracle) <willy@infradead.org> Date: Wed Apr 2 14:59:57
 2025 +0000 migrate: Remove call to ->writepage 
 Content analysis details:   (2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.197 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.197 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
X-Headers-End: 1u457Z-0003yT-IK
X-Mailman-Approved-At: Mon, 14 Apr 2025 03:07:15 +0000
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

syzbot has bisected this issue to:

commit 7ee3647243e5c4a9d74d4c7ec621eac75c6d37ea
Author: Matthew Wilcox (Oracle) <willy@infradead.org>
Date:   Wed Apr 2 14:59:57 2025 +0000

    migrate: Remove call to ->writepage

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15be8fe4580000
start commit:   01c6df60d5d4 Add linux-next specific files for 20250411
git tree:       linux-next
final oops:     https://syzkaller.appspot.com/x/report.txt?x=17be8fe4580000
console output: https://syzkaller.appspot.com/x/log.txt?x=13be8fe4580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=db03cefa26ecf825
dashboard link: https://syzkaller.appspot.com/bug?extid=8bb6fd945af4e0ad9299
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10afca3f980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=116f5c04580000

Reported-by: syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com
Fixes: 7ee3647243e5 ("migrate: Remove call to ->writepage")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
