Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4162485C20E
	for <lists+jfs-discussion@lfdr.de>; Tue, 20 Feb 2024 18:09:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rcTbw-0003qr-7B;
	Tue, 20 Feb 2024 17:08:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ONzUZQkbAHkpvwhXiiboXmmfa.dlldibrpboZlkqbkq.Zlj@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rcTaJ-00038P-WD for jfs-discussion@lists.sourceforge.net;
 Tue, 20 Feb 2024 17:07:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VoB9Sna81nB4vSaNge+i8EhIjXereiwccH3aqSzPYT8=; b=OdNj+JW0is7KlwADQdUlWGy56w
 DU5h656B460sl3xvVB3C02TgD9m+uiErcXwH3VZEhuODRsjUNd3WhW6khotElAys0r2raqXHFjGzW
 yB5ormMVFZhtvVMNPFWyO7WcKzF4vtvvGavmzyqAh1plgtYoQdCVbhC/k6hgTzya1et0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VoB9Sna81nB4vSaNge+i8EhIjXereiwccH3aqSzPYT8=; b=V
 3ISXR8/mPJM2uhgSEV18J4vxtCvjWkKmdVxw0Cl/6j9y8lDLy3QWgb0uqa8515unSXQDVYOXkV1g5
 83pN1kt3cb8UijyzHq/SZhBTg+n++uuG/a/hmLI1eUbSSz6AgBjHsGJYOp4PV9CWRxfStxOg/piIE
 mvMZsO6+97YGFjIg=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rcTaI-0007cr-G0 for jfs-discussion@lists.sourceforge.net;
 Tue, 20 Feb 2024 17:07:12 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-7bad62322f0so483367339f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 20 Feb 2024 09:07:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708448826; x=1709053626;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=VoB9Sna81nB4vSaNge+i8EhIjXereiwccH3aqSzPYT8=;
 b=CJOa0YgFZIADTnHfcj/qS/6lzKyIAhOZ83SGgnGsuDVaw3LwRn3VuMSkKJB1+mp46p
 IluydIpce+xVmtFLoLzNfuB6SXusEK7qS9Q1UfddKKZjjf9Zy3b7ec+X4hJYqUukwFsv
 FkmwaUvLgLdQeWOBqdnW9QoshXmMoCa6GN2j1SYxJXwbEbxqb1J6tXX1vduaKiIkXdXV
 HR8QVGVf4MmXpU8M4AC7BfyxuftqNLVh/+nTHeQjkt4pADRoCMx1VWR27ttIxv21sWHo
 6dG0FWwQo/D7afI7Cy+OXnn/dGhSlcqvPdHbcdlWSG1d0iexjvg5uKLcEPsu7ayYCJaW
 jYeQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWWFIs126VGx6pUigWSHSZ1KkbS6ICijLmYa1ovsHbdEnUrEPqGBQgIVzaHZ9Z2gd6wRhnuSwk/Npd6Ad8u2uzry85vI/O7KJfa2+0zplJFGSAe0PQ=
X-Gm-Message-State: AOJu0YyjEJCN1P6fGbUo/0K4TEEhElfn+M5pRwALMdWxDA091qBfzPCJ
 ZxAY3ZykKlWoIjvJEt9zGTiQ/khMth7AovkpDDJ53qBH/sDkviytKVIZNLq+lCx6GlMCvNGsuRN
 WlsyFijskrtRPXiz0bVSVIfZsBFMLEZGDBTzH+GsWOK74qxVCtvhvkG0=
X-Google-Smtp-Source: AGHT+IF/3RaeuI4CtitYxgcUNh3Is+XjhShaqoOBbnB9V16ZP6HtCD2adFQBNxOo4oeozbzjVfa9j8UiQubiKpaMwAhfub19N5aj
MIME-Version: 1.0
X-Received: by 2002:a05:6638:3f07:b0:474:35a3:6300 with SMTP id
 ck7-20020a0566383f0700b0047435a36300mr42842jab.6.1708448824305; Tue, 20 Feb
 2024 09:07:04 -0800 (PST)
Date: Tue, 20 Feb 2024 09:07:04 -0800
In-Reply-To: <0000000000005f876b06075a4936@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004a34ce0611d33dfa@google.com>
To: axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, 
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, postmaster@duagon.onmicrosoft.com, 
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rcTaI-0007cr-G0
X-Mailman-Approved-At: Tue, 20 Feb 2024 17:08:50 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in lmLogClose
 (2)
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
Reply-To: syzbot <syzbot+cf96fe0f87933d5cd68a@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14cf63d0180000
start commit:   b78b18fb8ee1 Merge tag 'erofs-for-6.6-rc5-fixes' of git://..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=7a5682d32a74b423
dashboard link: https://syzkaller.appspot.com/bug?extid=cf96fe0f87933d5cd68a
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=120a1c45680000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1230440e680000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
