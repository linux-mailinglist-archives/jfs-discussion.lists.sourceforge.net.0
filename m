Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 321766C04CA
	for <lists+jfs-discussion@lfdr.de>; Sun, 19 Mar 2023 21:26:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pdzay-0005zD-J7;
	Sun, 19 Mar 2023 20:25:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3hyEVZAkbAEY067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pdMI2-0001Fa-O6 for jfs-discussion@lists.sourceforge.net;
 Sat, 18 Mar 2023 02:27:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0u9iCqtoAmqFPlWvcnYREgJziHl4srI427ufeguhoqM=; b=FPogaVum1cn7aevj3IxrqovrDq
 Civc7yCmPXpO1aD0Dd0ZWRbHHClnYKPGLh4y+cFvlJ42O+QuqRWxEZ4A1pr0dn1Ap3lM6LbHdCTE6
 9CegJBtzLiK0QW16NA9LEScAtqo9a3UG0ae4bP58phS0iHuJMphaoa03LijnAzY9tM48=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0u9iCqtoAmqFPlWvcnYREgJziHl4srI427ufeguhoqM=; b=M
 8cy5h2c8PP8HUdfHPgsryGCM76Zxo/DhpSURCt4EmxdGZjaggSdlUHt1QcGJrcHrhjHPkNP/jvmqn
 ZC552v7DWeoTX4GNyivZxdNhwTHdLImxcIqoPRdHanOqBC+3KrUfRV8ftmqSZ7e2UuvwWAD/qIY+G
 E2/3ydZoVtoYxTmA=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pdMI1-00CLkm-Ib for jfs-discussion@lists.sourceforge.net;
 Sat, 18 Mar 2023 02:27:27 +0000
Received: by mail-io1-f72.google.com with SMTP id
 r3-20020a6b5d03000000b007530ad88769so3351318iob.4
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 17 Mar 2023 19:27:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679106440;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0u9iCqtoAmqFPlWvcnYREgJziHl4srI427ufeguhoqM=;
 b=HSdodtot0wqPRoB6gFL1/EjW104EOq/mvq1ovLZDEXH5ZnVmkAmjiulx4oayoJJeuz
 Mw5+U8KaT9K4PUHpwubnwVR9+NBmYDCdtt/+d4K0mKCBeqfY9dVD4nbl+ti9/dmR2dUJ
 kVVMEGdo70oQX9GYSPLN27qrUZ7PODLXFIEjH9as0BxydZibo33D3DugBidakfu2PvOs
 G5PJ45qyfKvSpnPGQ1Xxf4vPKFwqOjqHv0jg5bmqopElyLkpu2ny6PGFZajeEFCQkrjM
 fEmgnZsotjoBOrC4CeAfGUxIJZ7vhp8lV7ZS6Sww8XmRNiNnMcKHz0cZ+OVyw7+xcYG1
 2rbQ==
X-Gm-Message-State: AO0yUKWCrWQbvpNvJV3fMRt26pyzkqXdhYvgljejk68DwfEcBSpPt/OV
 EY7vZIdIdAcDKmLGcdTIGyP0xt9PthmDMAXQiDPHO9/MuiS3
X-Google-Smtp-Source: AK7set8wss4kUHb8bvkmj46rggkVv7EYWpiCNxgTNjAiaYvE3l2uDADG4+AdbZbUYfVh0de7isnTkVF1g0r5VUiiYVo8PDDYYWkv
MIME-Version: 1.0
X-Received: by 2002:a02:b181:0:b0:3b7:9d19:fec7 with SMTP id
 t1-20020a02b181000000b003b79d19fec7mr266557jah.0.1679106439975; Fri, 17 Mar
 2023 19:27:19 -0700 (PDT)
Date: Fri, 17 Mar 2023 19:27:19 -0700
In-Reply-To: <000000000000aa58fb05ed5beed6@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e51b9905f7236ef3@google.com>
From: syzbot <syzbot+0835e526215d5dcefaa9@syzkaller.appspotmail.com>
To: dave.kleikamp@oracle.com, jfs-discussion@lists.sourceforge.net, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 liushixin2@huawei.com, mudongliangabcd@gmail.com, paskripkin@gmail.com, 
 r33s3n6@gmail.com, shaggy@kernel.org, syzkaller-bugs@googlegroups.com, 
 wuhoipok@gmail.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot suspects this issue was fixed by commit: commit
 fad376fce0af58deebc5075b8539dc05bf639af3
 Author: Liu Shixin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
 Date: Thu Nov 3 03:01:59 2022 +0000 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1pdMI1-00CLkm-Ib
X-Mailman-Approved-At: Sun, 19 Mar 2023 20:25:34 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbMount
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

syzbot suspects this issue was fixed by commit:

commit fad376fce0af58deebc5075b8539dc05bf639af3
Author: Liu Shixin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Date:   Thu Nov 3 03:01:59 2022 +0000

    fs/jfs: fix shift exponent db_agl2size negative

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10f3046ec80000
start commit:   513c1a3d3f19 Merge tag 'trace-v6.2-rc6' of git://git.kerne..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=6bb1911ff9919df0
dashboard link: https://syzkaller.appspot.com/bug?extid=0835e526215d5dcefaa9
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16d599df480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16bb69a7480000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs/jfs: fix shift exponent db_agl2size negative

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
