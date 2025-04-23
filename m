Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F173A99B82
	for <lists+jfs-discussion@lfdr.de>; Thu, 24 Apr 2025 00:27:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7iYi-0007RA-L3;
	Wed, 23 Apr 2025 22:27:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3O2UJaAkbAHIiopaQbbUhQffYT.WeeWbUkiUhSedjUdj.Sec@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1u7iIY-0002XB-4r for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 22:10:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DQ6mSUR6huP/2sRS66PfC+BFrcP2it5lE3o0daMN2ho=; b=T/f0FnVLKz5oqY6POGeuIV6F82
 wQVUSYw2P+TQT6lmcfjF+M8pBhguVTeJUOYbcbYP+EtIYddw4NuqWnjtUCHn5bu7vXGjomuYBWZ/G
 d7oQOnYbSEua9DG91YevVBG/gOSvrAIjlY7j0AXjJrBLCCrGtIgiDHWzpzHPaWsg1280=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DQ6mSUR6huP/2sRS66PfC+BFrcP2it5lE3o0daMN2ho=; b=L
 XRZj8SwqqtB3hC3dT1kOJ+p2tI1LedeFlbfCaTZTGtjcNIc7pVlNIiCKvGfnTbLcsdiMjriR++cIh
 frx5l+ztD06lXwpeJH4VQdFMnYG1fUPeYip51j1kvbp8TtIsPcDSmClIfe67X9bTg5eNEfP9i0Dy5
 aB7LBiecf4cQqDDY=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7iII-0002SP-IK for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 22:10:30 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-86186c58c41so45706739f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 23 Apr 2025 15:10:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745446204; x=1746051004;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=DQ6mSUR6huP/2sRS66PfC+BFrcP2it5lE3o0daMN2ho=;
 b=XVAWKCPD0UVcHluV64sIvofjM+1EF3JFBDv0sdWjwDTxqr04Sho7UaqE3jQHuaDgqf
 yakctx4cMp8Cf9rZdVtb+ESxWFKCvezTvGcaHDkUwo6LMJQdAdw26RGMAq/4QrXPIqBY
 Z9ssVe8wLCr3Ytg4DDT80tB62BRN4iMlM5N6EbGcQlYVyfI4WCg7Om34v1tKlc3XmKX5
 nbzYWFfN7iEShgaHee2XWvL1riANVJIJ4S0iC3CdxBbxwEjmRqNdG0ACOVtwx3jlgFTg
 fcISAyoGCHWsgxq6ujQyAzCSQN0SjAFchZYj7yKKtn42c6cnX+LNuMB7yCgi9clADoH8
 nQ4Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXw85GwTAj8gENJ4YLyJzNntR7AMDMJubznRhX8tXeJ7DW4/G8VLmYkpFKWEDUuL+nDKei4+5413uEKR/R5DA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzdBwECNEiQ1jWMGeUrPD9qKLKIMk1DV49rokEHuIWng40RsETT
 /EzG0lCTQvVeKJwYm0p7/tZwylSpGUmZc9omK9aVJm4+FbRYtuVAXPPhtwTQPDm+oOJ8A/NCaeD
 hE0O9jTS/52gGSSSoR3y3iPXkrargohXZ7vI1mPI5iqk9A+yTPOuOUig=
X-Google-Smtp-Source: AGHT+IG9UXANK6qWy/l3o8i0ZcurbvHjpfPiy57BnNMBGFgaovuDoSjJF/54+GrYQf1a+BT8ivw+MU+CEfNQF8QCuWGLfbo6gmkr
MIME-Version: 1.0
X-Received: by 2002:a05:6602:3f89:b0:864:4a64:f28b with SMTP id
 ca18e2360f4ac-8644fa6e148mr73527339f.12.1745446203829; Wed, 23 Apr 2025
 15:10:03 -0700 (PDT)
Date: Wed, 23 Apr 2025 15:10:03 -0700
In-Reply-To: <20250423214710.551189-1-contact@arnaud-lcm.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6809653b.050a0220.10d98e.0004.GAE@google.com>
To: contact@arnaud-lcm.com, jfs-discussion@lists.sourceforge.net, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch and the reproducer
 did not trigger any issue: Reported-by:
 syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com
 Tested-by: syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.70 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.70 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
X-Headers-End: 1u7iII-0002SP-IK
X-Mailman-Approved-At: Wed, 23 Apr 2025 22:27:11 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in dbAllocAG
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
Reply-To: syzbot <syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-by: syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com
Tested-by: syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com

Tested on:

commit:         a79be02b Fix mis-uses of 'cc-option' for warning disab..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=120ae574580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=45c3bf6fd4cb6a10
dashboard link: https://syzkaller.appspot.com/bug?extid=cffd18309153948f3c3e
compiler:       Debian clang version 15.0.6, Debian LLD 15.0.6
patch:          https://syzkaller.appspot.com/x/patch.diff?x=1252e574580000

Note: testing is done by a robot and is best-effort only.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
