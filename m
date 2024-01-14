Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA7482D1F7
	for <lists+jfs-discussion@lfdr.de>; Sun, 14 Jan 2024 20:12:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rP5u3-0005Wq-7w;
	Sun, 14 Jan 2024 19:12:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3rYqjZQkbAIQ067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rOul8-0007rm-Jj for jfs-discussion@lists.sourceforge.net;
 Sun, 14 Jan 2024 07:18:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rFuCfXt+BxUWXTPpDFo62pMwYcUozTAUPCD33bbohME=; b=XCZZDfCyIPXI4hSISPuD9CEaUq
 byFnwO33ed6CN2AWJcP90mm2eML+icJJh/LLA3g/fnGY4Hz0LaQS80fw5ZSdstnsR2stnd+3D2dgg
 qAbv8hwPWpmCPbqjIC0Lg/sjnjn/TWNAPHMo0/Uj0gucaFgWnc1vMGrv1mUdpnTzOuZ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rFuCfXt+BxUWXTPpDFo62pMwYcUozTAUPCD33bbohME=; b=A
 WDB21z1uQ5Dt0cTu+YAoR7prbIqDGCYO9O3kuqO+vFAUGDjL783z4AKCvCobtbl2Scsy4Vfwn6UHA
 /rZ9CRmzKjW1o1gtxuNXrkTGk0wXpoemigU6jVxgwAYtY2wiT+DRo8yqJ56ETbsgNBA7Q1lVBCkNl
 jWqF8Tu/kb9/z3tg=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rOul5-0003KF-3C for jfs-discussion@lists.sourceforge.net;
 Sun, 14 Jan 2024 07:18:19 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-35ff20816f7so67389055ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 13 Jan 2024 23:18:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705216685; x=1705821485;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rFuCfXt+BxUWXTPpDFo62pMwYcUozTAUPCD33bbohME=;
 b=WTSoRLwYilD0dt/m8+/859yAoI8DSTG+H8gkMR/xC0GqgeLKmGOosKEXqdRkzF4aPQ
 gSmAAJ21Q/gwwd++/Mz0KE+26BFHrsW7+g61NoS8N9Cl69bKfnPiyMpHMNeWKAoMRIZc
 DK1zNRRArer8aEMV0Zx9282y6iZ0N/9WbO29CYtVxr6Km+G4kCeB8uaiL6YX1BgfV51v
 NP996chaMw3/pbRHG5P4fxwh0oVPIS2CzdKURVCvLC4HLWttKbNbvTK8CDEqKW2lRYVU
 hNbZ2LJDgIIFta92J2zO4tf3eg4YDOsQoG2rk9nkQXX/FXFHdgGy0BTW+PfWryVaUTVY
 LsOg==
X-Gm-Message-State: AOJu0YyMm0OGDQ19xx+olOZqB3PUGbq5lWOiBB4jGOQOVnVJ1F981h/1
 xP89DPPaDXWyJFUnUdGbXWEDyoXnF6gW4aLOj11ZpA6RFU1a
X-Google-Smtp-Source: AGHT+IGimRhoUIZge/Cefcap1amRLfI0F1bGWHGp+s1g1C+s2YzJZW/J5H80QFOHyQ2sc6MsZ6q2WFU0y1Lb49i7Bwlgo47qNbkD
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:12ce:b0:360:7c34:ffa7 with SMTP id
 i14-20020a056e0212ce00b003607c34ffa7mr516080ilm.1.1705216685063; Sat, 13 Jan
 2024 23:18:05 -0800 (PST)
Date: Sat, 13 Jan 2024 23:18:05 -0800
In-Reply-To: <00000000000027993305eb841df8@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c746f0060ee2b23a@google.com>
To: axboe@kernel.dk, brauner@kernel.org, dave.kleikamp@oracle.com, 
 ghandatmanas@gmail.com, jack@suse.cz, jfs-discussion@lists.sourceforge.net, 
 linux-fsdevel@vger.kernel.org, linux-kernel-mentees@lists.linuxfoundation.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com, syzkaller@googlegroups.com
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rOul5-0003KF-3C
X-Mailman-Approved-At: Sun, 14 Jan 2024 19:12:12 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in diWrite
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
Reply-To: syzbot <syzbot+c1056fdfe414463fdb33@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17ec162be80000
start commit:   493ffd6605b2 Merge tag 'ucount-rlimits-cleanups-for-v5.19'..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=d19f5d16783f901
dashboard link: https://syzkaller.appspot.com/bug?extid=c1056fdfe414463fdb33
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12f431d2880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1208894a880000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
