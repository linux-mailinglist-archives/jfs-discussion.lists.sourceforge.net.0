Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF5685BDE6
	for <lists+jfs-discussion@lfdr.de>; Tue, 20 Feb 2024 14:57:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rcQcU-0002Ao-IL;
	Tue, 20 Feb 2024 13:57:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3rAXOZQkbACUTZaLBMMFSBQQJE.HPPHMFVTFSDPOUFOU.DPN@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rab0I-0005uE-5H for jfs-discussion@lists.sourceforge.net;
 Thu, 15 Feb 2024 12:38:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y4EiGIu2mTjtQ2BKESlH87IOtFfw0dlvPHITGr5W5T4=; b=OI+WgR2bbNavfIfqyzbqVRTGrN
 G72BSfNmHotYCEKXoh/qzcnr2H6q+8+TzTXS9DjMembpBFQRJHcM6h8kGLUJviFWeDll33jgJj9fa
 5kj+wSl5SqgpC/152Tw9coqd0VEXG8GOcXNlYz5U940SA0wFnw5dmxNPfvicHSTgau0I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=y4EiGIu2mTjtQ2BKESlH87IOtFfw0dlvPHITGr5W5T4=; b=A
 fcSzTpWxUyJbCCSisE9R6j3RiuSauoApx79BBGLYGu58QvAeBk/UEKoJ6GdY6TFfeH/MU8ZplXrL0
 abm9RV4toe+O371r+aEOfBEfXcMhftHJMyITPrGVaxm4EsDIDekDo6sFkJH/Bc6ULteeXdiH1FU8l
 X6HJYZJdIcrY+YrU=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rab0D-00013m-OP for jfs-discussion@lists.sourceforge.net;
 Thu, 15 Feb 2024 12:38:14 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-7c495a44754so36488639f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 15 Feb 2024 04:38:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708000685; x=1708605485;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=y4EiGIu2mTjtQ2BKESlH87IOtFfw0dlvPHITGr5W5T4=;
 b=BMP2gayqc2tfDgIEgX8jMDMRN6GLCM40+rOVdjOcXPBIdkKxNTmZfBfbGxRNYiz9IP
 PeBT6jDrteHGgqFBRsJeLfPUzByBGcTGaxymG05XxaNb5DUE3sdu3xZoHyEeXkZ8FBZN
 wcAekiy/mxgxLfE1vFlVwPXL+sZnjAPd2Nh8FB6x8AECY8REf2PvZ8iJu+7tVqfTfLqY
 pKqhEpY05J/Uz1/t98gB8O356mzqnoS3aJwVbytnN57nEwr4SCq5rd5X4/19aAL94/bi
 MugzWRWV77uxWzRefX8tUY6UtBL3pfaOx6Jn/q22wp2axh/VFBvg8mhI/vO69rkfxGsD
 QuaA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVsxuXC97HrIrfxXPhoSmIXBcTDuJ2EutO2/2OC5qZRuEevqVj7d06bnn/QGGdJ5X36P6bET8LJETGaz3npKpNPq+WnOobzvWK8lHbRSoR9QWQ0rv4=
X-Gm-Message-State: AOJu0YwxnMgkEHa6DrtV8mlzjJn3Lt666sBaRlv9yn7Wbs0ty2G+vvks
 6h/AJOLTkwKVnW637ykyCb1eEA98fYPVYcMD13N+dgiWcdOCBpofVUGTNQpYyXFtqRqu8sx5u/P
 Jw71q8rg0xpr3m2zVY53wXepdKU4Ppyvb4d8BZfwAHff/YPATL81FJsI=
X-Google-Smtp-Source: AGHT+IFL92pJv2bjiJRhXIiR95FF9dQns631ia4A87d6518YNfgSwHqS1NKPmdx+39TqBAEzlU9IOeqWxjvpkl7HaHm7mH6Rg4Wu
MIME-Version: 1.0
X-Received: by 2002:a05:6638:4387:b0:471:3c6d:b574 with SMTP id
 bo7-20020a056638438700b004713c6db574mr10331jab.4.1708000684861; Thu, 15 Feb
 2024 04:38:04 -0800 (PST)
Date: Thu, 15 Feb 2024 04:38:04 -0800
In-Reply-To: <000000000000a3818b05f18916e0@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000018f2c806116ae6d3@google.com>
To: axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, 
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, reiserfs-devel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rab0D-00013m-OP
X-Mailman-Approved-At: Tue, 20 Feb 2024 13:57:13 +0000
Subject: Re: [Jfs-discussion] [syzbot] [reiserfs?] BUG: unable to handle
 kernel paging request in reiserfs_readdir_inode
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
Reply-To: syzbot <syzbot+3f6ef04b7cf85153b528@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14ffd320180000
start commit:   534293368afa Merge tag 'kbuild-fixes-v6.3' of git://git.ke..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=9688428cfef5e8d5
dashboard link: https://syzkaller.appspot.com/bug?extid=3f6ef04b7cf85153b528
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=138d82bac80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1123fed2c80000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
