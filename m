Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2056882D1F6
	for <lists+jfs-discussion@lfdr.de>; Sun, 14 Jan 2024 20:12:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rP5u2-0005Wk-VV;
	Sun, 14 Jan 2024 19:12:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3JOehZQkbAK0flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rOSol-0003xu-Au for jfs-discussion@lists.sourceforge.net;
 Sat, 13 Jan 2024 01:28:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yO/xdw8mUiUeRo79DAK0wxdvi30bQpvVBNatj0IZ9bQ=; b=VhflVlatS07uK83+tSlDA8lNIa
 iaruLml+EMizPmJDR9f8nB52FDpL1VW00DTO1UBH9J+5rBkRY0EnlCmmsCwWHOL/FP9lR9OLu1VEm
 vCLd0G16SFjkAqJTa4uugIQ616SE7u4Oi3EqSsN+Kyy20fH8ukb/ZJypGQc++Mjv5xdA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yO/xdw8mUiUeRo79DAK0wxdvi30bQpvVBNatj0IZ9bQ=; b=L
 Yeyb2UqD8Yspg3KWy8sZiyGvgVRMxPCGKLjP/SDSibIwYdW1cNahuLdLyMjausxVP4SALEouQTK8R
 zlzeuari6OaVQfKrVayzyl9LgAQ82dBrSsjxNdiwlsKj0Udo10bm/0g/IoamCM6RP8M8IQypXaqvE
 hpsVlipSu7GKCGjo=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rOSoj-0006zB-Dd for jfs-discussion@lists.sourceforge.net;
 Sat, 13 Jan 2024 01:28:11 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-3604ae9e876so61401615ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 12 Jan 2024 17:28:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705109284; x=1705714084;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=yO/xdw8mUiUeRo79DAK0wxdvi30bQpvVBNatj0IZ9bQ=;
 b=i9npeOcRmIbzUczsouDHIeh7UMHuwTZc5GKHoCxWTUcf8VeHlubMIkDaLOBBm1gLx5
 0mPKQF++9EJmX5Z+fG7wjLpZHZAxNE1NnjrQTrSSsFJRoX5/X60qvm+cSRIEqWzeD6hl
 o0zYj5LJv7rczr1+6cGB6E+BQb3y+H1zOC9rI8iXP9B4qMA373BQaFRNQRJz+EkIkQyZ
 xgGGJJJ4fEHsJQmWaliDpaP8uhsxgGw+l8YJpQ25/7l06PdaEV7ImfCMIIoztgi2+5lC
 wNJh6m66FdtIEBc67/3UpU1NiaVExBQM9FaI1nn/NgygCZlXFDlQYWcfaBxfYtMdZVmO
 5i/w==
X-Gm-Message-State: AOJu0Ywx8oreAjpt1igFdIgebZhZLeuArPTHF4q0nSLDv793vtyw3TaQ
 33usFacQF27lsBVyc01K1EgFBrxZmqTuv5VEC5WZUpl46w2J
X-Google-Smtp-Source: AGHT+IGcMUlOs/Tzd0+a1Uuk+acyfi90LBsot4shAq3B70+iVAprve0XWavepzODdBa0BESDLdRg+h02+m2jOZGlDkT26zifC63/
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a07:b0:35f:d5ea:8a86 with SMTP id
 s7-20020a056e021a0700b0035fd5ea8a86mr194343ild.5.1705109284375; Fri, 12 Jan
 2024 17:28:04 -0800 (PST)
Date: Fri, 12 Jan 2024 17:28:04 -0800
In-Reply-To: <0000000000009e798305fe8e95ac@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000032d485060ec9b172@google.com>
To: axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, 
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot suspects this issue was fixed by commit: commit
 6f861765464f43a71462d52026fbddfc858239a5
 Author: Jan Kara <jack@suse.cz> Date: Wed Nov 1 17:43:10 2023 +0000 fs: Block
 writes to mounted block devices 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rOSoj-0006zB-Dd
X-Mailman-Approved-At: Sun, 14 Jan 2024 19:12:12 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in txEnd
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
Reply-To: syzbot <syzbot+3699edf4da1e736b317b@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1280b62be80000
start commit:   692b7dc87ca6 Merge tag 'hyperv-fixes-signed-20230619' of g..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=e74b395fe4978721
dashboard link: https://syzkaller.appspot.com/bug?extid=3699edf4da1e736b317b
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16b373a7280000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1749e8f3280000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
