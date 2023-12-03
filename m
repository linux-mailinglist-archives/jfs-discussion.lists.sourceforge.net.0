Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CB880378F
	for <lists+jfs-discussion@lfdr.de>; Mon,  4 Dec 2023 15:52:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rAAID-0008Ue-V9;
	Mon, 04 Dec 2023 14:51:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3MBFsZQkbADUjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1r9eyi-0003QR-9D for jfs-discussion@lists.sourceforge.net;
 Sun, 03 Dec 2023 05:25:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gh8kA0wvcEudJg4sTCzviSk9gPRZ58CLaMI+8dOTqeg=; b=aAHnnTUt3N1SMZr+LDrN0bjxS5
 zuOkr4Yq9SnvghF7V6F3n/qnC/Ve4gpldHkvSsIxu7zhSFjkQFWdKGGWzXpp3vxFx9Tcapkp2T6LS
 kVr29BKgwlkFl+5liCr9WYgtCbLOlhF+80NRmcSTqqtlXNmADC3IsIYTolZZMyaDr2f8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gh8kA0wvcEudJg4sTCzviSk9gPRZ58CLaMI+8dOTqeg=; b=l
 zI125qF/Tz0yiNKbRBg7193T8VfJnuX2eUI3r3IrfkWtbFrtjzJA/KRaDj5bL5CbcuQlzWmel+wi8
 WKuwrrFpgG6Hngf74xyPOo+yUHJZGc9Y6UkxANPAFRpQAKOYxV1Q2SZqPmxdpJ1aevC8S14/LxPLF
 CFiainJ4TuYEt5N8=;
Received: from mail-oi1-f198.google.com ([209.85.167.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1r9eye-0002Xd-Rn for jfs-discussion@lists.sourceforge.net;
 Sun, 03 Dec 2023 05:25:16 +0000
Received: by mail-oi1-f198.google.com with SMTP id
 5614622812f47-3b8b5221627so1008943b6e.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 02 Dec 2023 21:25:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701581104; x=1702185904;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gh8kA0wvcEudJg4sTCzviSk9gPRZ58CLaMI+8dOTqeg=;
 b=JsewWwT/64DRDbJYFrwP1LMayp/p9jJi5h3XHMipGxarKclD/TMppThZ6sRTcQ1J80
 IJFRl8TtJPtlj0BTp1RoHbL1lKQPcPtkSFmHe2gqpw0tqoaTdD/dBIh3nw2A0I0sUQwL
 Shb8ewFst34yxyqaPU//n33YKRJDT+9ze6opY+abHI9ozFtT/WRMfF9AQgAwBMlA0sGY
 UmuhyqetQWW7QhcffT4HhktN/A5X7spGxA7rWA81qCTL6kr0zWgB0DWW9fDeNxq3K/XR
 /TAVlm1t7p4U0zCqT2Rx0MzQUFF8I8/eOROtpA23BaTcSrzeVkTVSxj6IEFj7sqsdeZx
 4z/A==
X-Gm-Message-State: AOJu0Yxv21JBZWXovKWFnDaJi4TORoYQsUSP38neaSSP34K/23yvZRfF
 SROhfVWOkWoxDZk5HIupVqOBaHBiQGljq6IcDAAtXu6M/LPV
X-Google-Smtp-Source: AGHT+IEDkTe1NFy8Y5QzTTM+crOH53QnZSWciCcsTjwYdrTuB7mIO4LDXoZqEvhZEj1GGk+/ZWWcmX0wDRoOmUA5vaOGR++lr6JE
MIME-Version: 1.0
X-Received: by 2002:a05:6808:344:b0:3ae:61f:335e with SMTP id
 j4-20020a056808034400b003ae061f335emr1111285oie.5.1701581104799; Sat, 02 Dec
 2023 21:25:04 -0800 (PST)
Date: Sat, 02 Dec 2023 21:25:04 -0800
In-Reply-To: <000000000000f841fb05eb364ce6@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004ee8c3060b943920@google.com>
To: brauner@kernel.org, dave.kleikamp@oracle.com, ghandatmanas@gmail.com, 
 jack@suse.cz, jfs-discussion@lists.sourceforge.net, jlayton@kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel-mentees@lists.linuxfoundation.org, 
 linux-kernel@vger.kernel.org, liushixin2@huawei.com, mirimmad17@gmail.com, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, 
 syzkaller@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot suspects this issue was fixed by commit: commit
 a779ed754e52d582b8c0e17959df063108bd0656
 Author: Dave Kleikamp <dave.kleikamp@oracle.com> Date: Thu Oct 5 14:16:14
 2023 +0000 jfs: define xtree root and page independently 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.198 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.198 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r9eye-0002Xd-Rn
X-Mailman-Approved-At: Mon, 04 Dec 2023 14:51:28 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in txCommit
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
Reply-To: syzbot <syzbot+0558d19c373e44da3c18@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit a779ed754e52d582b8c0e17959df063108bd0656
Author: Dave Kleikamp <dave.kleikamp@oracle.com>
Date:   Thu Oct 5 14:16:14 2023 +0000

    jfs: define xtree root and page independently

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14f67ce2e80000
start commit:   d88520ad73b7 Merge tag 'pull-nfsd-fix' of git://git.kernel..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=9ee601744db6e780
dashboard link: https://syzkaller.appspot.com/bug?extid=0558d19c373e44da3c18
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11e974ed680000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11b2588b680000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: jfs: define xtree root and page independently

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
