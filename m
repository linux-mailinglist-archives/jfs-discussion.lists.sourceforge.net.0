Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A324DEA64
	for <lists+jfs-discussion@lfdr.de>; Sat, 19 Mar 2022 20:28:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nVekc-0001eb-Jn; Sat, 19 Mar 2022 19:28:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3pyE2YgkbANoOUVG6HHAN6LLE9.CKKCHAQOAN8KJPAJP.8KI@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1nVdkA-000367-Ja
 for jfs-discussion@lists.sourceforge.net; Sat, 19 Mar 2022 18:32:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IZtuSSe7h4ygjSJ8KqApgw4dc4sgkX0YCgrh7z/0rTY=; b=dzsjrR15QjOxdz6OjMHx9nK7RV
 wy3pcJfMtQxSv0TGn003yjg66IlFrGwhoMm7ch81W5YU6Ykg1kLyRDSKQZK0d78eXXWUy9Oy/1a5B
 m9bdEMfBHh1dm+SBPGUiPHa74qy4bbZ3eGqd3sFZQt1DqvhBwT+T9jflskOcVrffNaD4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IZtuSSe7h4ygjSJ8KqApgw4dc4sgkX0YCgrh7z/0rTY=; b=L
 U1mVW27z/K86hqhW0OMpzyEbtwqU3hfAqaA7UAi2g7KnS5YgEyIsAsz6EnfHLVUCvmhv0c48XBxe9
 cm1CO8L1caboI00AuFbxRlc9Ejf+vtZgvzmhzHw7TvVM9u8Ct+EIh9HL3R3vTncDwo6RwHTC3wScx
 WQm53R1JO2AQHB84=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nVds5-0002an-Jn
 for jfs-discussion@lists.sourceforge.net; Sat, 19 Mar 2022 18:32:14 +0000
Received: by mail-io1-f69.google.com with SMTP id
 g16-20020a05660226d000b00638d8e1828bso7384450ioo.13
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 19 Mar 2022 11:32:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=IZtuSSe7h4ygjSJ8KqApgw4dc4sgkX0YCgrh7z/0rTY=;
 b=sCdYdXmbBPeKqzZ5xFuoiYNw6FcqPeGXKaLNJMOHZImAmZDQIUslLamYp3PcSkoRhy
 vLC3/9KbdMdwI3ifDk/zjEkMIpQYoL5w4UKuytH5AYOQeioPjgMt+Md7cTLcCqQEYkns
 dvJsUbmVBeN7jEMT5bjkhGfdshq5f5z4Ybjlf/CdCk7EYSEq2MY4V4GEjzWKCymO+mfG
 TeLBmXEGja/1V2f7dmojZ4RZRVtewd7ag95DEzjGV+iVCLTGsYErvVbYSn3k0Xjq7Cel
 QInhvnTA2mql8Z2BT6y1ef78pBE/i5v5mbUL3gA7FTcUt0DNgjjrSalB3ibQOsgmzQp9
 nB+Q==
X-Gm-Message-State: AOAM533K1qdbkRFqDODn8SPiiMJNjBug36YuuBwXEW28yRD1Ne0L0uiP
 /nzNrJXepTdfHap5rm18mn3wPXHIANZhD4iAyPU5+2a2UhNG
X-Google-Smtp-Source: ABdhPJz+S/WggbwwTQF2cGT56obUcB+F64Vr0b60Mm58ZevgA41kJhUpY+YFb6eHnCWtztmTdjo8L5wOPZ8aKhUCSJusjifjz6bK
MIME-Version: 1.0
X-Received: by 2002:a05:6638:490f:b0:317:d121:a93a with SMTP id
 cx15-20020a056638490f00b00317d121a93amr6918348jab.35.1647714727210; Sat, 19
 Mar 2022 11:32:07 -0700 (PDT)
Date: Sat, 19 Mar 2022 11:32:07 -0700
In-Reply-To: <57fc3806-86c6-b1b2-4c44-083b1b7afc8b@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000001b61605da967bae@google.com>
From: syzbot <syzbot+46f5c25af73eb8330eb6@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 paskripkin@gmail.com, shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch and the reproducer
 did not trigger any issue: Reported-and-tested-by:
 syzbot+46f5c25af73eb8330eb6@syzkaller.appspotmail.com
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nVds5-0002an-Jn
X-Mailman-Approved-At: Sat, 19 Mar 2022 19:28:31 +0000
Subject: Re: [Jfs-discussion] [syzbot] divide error in dbNextAG
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-and-tested-by: syzbot+46f5c25af73eb8330eb6@syzkaller.appspotmail.com

Tested on:

commit:         34e047aa Merge tag 'arm64-fixes' of git://git.kernel.o..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=70f75a89c7a0e6bc
dashboard link: https://syzkaller.appspot.com/bug?extid=46f5c25af73eb8330eb6
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
patch:          https://syzkaller.appspot.com/x/patch.diff?x=14c2cd33700000

Note: testing is done by a robot and is best-effort only.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
