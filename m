Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F722AA4D7C
	for <lists+jfs-discussion@lfdr.de>; Wed, 30 Apr 2025 15:30:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:In-Reply-To:Date:MIME-Version:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=nLI0kW4uwA+xUiKWv2QT/EocHpOlHlDW1EOLnfzKdH4=; b=KJKLDvb8ESjP1nTpyJMxbZK43c
	JrqoleANkNvUfNH56l1BiZ/eUCNyyC7rkoSdncX2Rn6OEX8C1ZOX0qbUiTu2O04slWhiT/yJt0srZ
	CJX6+xC2SbvN4P9ytjZJyla8LOG9L4Bup+SjK30p86IsZjc3ulqUIJDK/qaVuiV5+mwc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uA7VB-00035c-Cu;
	Wed, 30 Apr 2025 13:29:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3jv0RaAkbABkHNO9zAA3GzEE72.5DD5A3JH3G1DCI3CI.1DB@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1uA4pk-0000Q8-R6 for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Apr 2025 10:38:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zXN82wcI/IbCtTFLNoxHu+KyZbBxiqezwrjpxJTKZks=; b=G63BoIYbj6GsPjbkG5Mo7fZ30V
 B84/oJucuI1W8by+4cdkKyId1ub2cOsGQbKO7dEoPrsC/43wt5aQibB4RxI3yR/SEv98z8W6D5OEw
 JEmQvym5pZCu8xp3SqNNY1pU/hHmq/YxUvdCHeaMlm8iER5pcpm4lvHYtKn7iyJnfi78=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zXN82wcI/IbCtTFLNoxHu+KyZbBxiqezwrjpxJTKZks=; b=J
 bCcWw0burzgfZD4ZB48BHiypgxHQe4CHpYNEh2jO9gBzenT87mwrLyKr1tczgmuX9V7cjFJWluA6V
 9hjHfyfjjgpVcQBts7vFRQm+pDGr+hI4w8xH4f5k/HGA83S69aQt4/jKrJV3pPdY9V+xDvsW3LlVt
 M8QzATtTLSBkqCWU=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uA4pV-0006qd-8N for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Apr 2025 10:38:32 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-85e7f5129d5so608881339f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 30 Apr 2025 03:38:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746009486; x=1746614286;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zXN82wcI/IbCtTFLNoxHu+KyZbBxiqezwrjpxJTKZks=;
 b=LzP0q9MSFbriAXnIzsbdRBX9JoFiRYbREAEP+pTXSnr3xpAr/3pQ0WjNcbiMI7KGwT
 9ecGOUl4mBk5rE0klvVdIp0E/no5BfXVyjar6V6MgJjSnDNnOXf75ofLa3rbtS2oD6TC
 cJ/bS2VUbFybWvnypLQDKoAesMS8phg9lOeCFDJfCPEESZdO3XPomgGxHzFMCjWJxTUb
 moTaeJsljbd/wVdC7wBP1zp1/gER7I/htuLOXT9eesSKRZp2K+FTY836a0wnZgzWYCfA
 fa3g/jz7ZVXN0PVeC369SqwrQ2MgJ0WJz8PpUwD8qa+OiKNYsW4uftSvLnEGbfYYBsTE
 CPKQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW+xOF6d2BEN5nsE9PIVBuv/aeGp9Z/TtjkQDNt6qaC7DSFmUg8YGp/ZPZNYhO4aJebh6tDeXZvPqFC/c/dfA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwZeSyuwLhUvIO6lhzV0EeAUvk3U1oI8E/+glBMBGCUrZyaDNC8
 51PjCcaeYpymR56BMkLOMmPV9xjyyh3Od/47bDyt8X6RRkjlsbhUQBUwhjpqXs2faPTfQaDyQ3R
 nyLb0SJA7rlpOecKeWylkEdtIMezaZDw5fSmffrGxRIp3fCQNsiXok8g=
X-Google-Smtp-Source: AGHT+IFhpytsmVF/KwUgWFCLf+SiYl6EPhWzgg7n4M0CKLvrJN6q1ASyMrNdevDN2uUhNPTkalK6C6X8KS1qQh8b6S8K3aM7d7A+
MIME-Version: 1.0
X-Received: by 2002:a05:6602:3a0c:b0:864:4911:f463 with SMTP id
 ca18e2360f4ac-8649806122fmr160611539f.10.1746009486478; Wed, 30 Apr 2025
 03:38:06 -0700 (PDT)
Date: Wed, 30 Apr 2025 03:38:06 -0700
In-Reply-To: <20250430100150.279751-1-shivankg@amd.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6811fd8e.050a0220.16fb2c.000c.GAE@google.com>
To: akpm@linux-foundation.org, apopple@nvidia.com, david@redhat.com, 
 donettom@linux.ibm.com, jane.chu@oracle.com, 
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 linux-mm@kvack.org, shaggy@kernel.org, shivankg@amd.com, 
 syzkaller-bugs@googlegroups.com, wangkefeng.wang@huawei.com, 
 willy@infradead.org, ziy@nvidia.com
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch and the reproducer
 did not trigger any issue: Reported-by:
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com
 Tested-by: syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com 
 Content analysis details:   (2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.71 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.71 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
X-Headers-End: 1uA4pV-0006qd-8N
X-Mailman-Approved-At: Wed, 30 Apr 2025 13:29:27 +0000
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

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-by: syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com
Tested-by: syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com

Tested on:

commit:         69a58d52 Revert "x86/mm: Add 'mm' argument to unuse_te..
git tree:       https://github.com/shivankgarg98/linux.git
console output: https://syzkaller.appspot.com/x/log.txt?x=137a68d4580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f002bbe3fe2ccafa
dashboard link: https://syzkaller.appspot.com/bug?extid=8bb6fd945af4e0ad9299
compiler:       Debian clang version 20.1.2 (++20250402124445+58df0ef89dd6-1~exp1~20250402004600.97), Debian LLD 20.1.2

Note: no patches were applied.
Note: testing is done by a robot and is best-effort only.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
