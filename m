Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4330382C391
	for <lists+jfs-discussion@lfdr.de>; Fri, 12 Jan 2024 17:29:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rOKOm-000320-TR;
	Fri, 12 Jan 2024 16:28:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3V7SgZQkbAHYmsteUffYlUjjcX.aiiafYomYlWihnYhn.Wig@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rO8O3-0004B7-Ux for jfs-discussion@lists.sourceforge.net;
 Fri, 12 Jan 2024 03:39:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xsULNSwGIqV6VUSGukBMzcLGajKxNSaJ734615aHwHA=; b=iTNBgMUID/tdMU4nV9UfHlltRG
 DbXY6jDiz4iJ0xLF8gDxmmmWf9IqlfwLMeewtbR+UyVhgkpMATfC1zOqKSL57C3EmJRUkZsBF95Rf
 sR3fNynnTSr/oERJRrCZt5nQTITR8vUnBucNXUkTNsK/qDS1aKAkSuKryzgHT6TJxo5g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xsULNSwGIqV6VUSGukBMzcLGajKxNSaJ734615aHwHA=; b=Y
 3I65tQ5oh10CDJLAQdn/b419IzWoPcIbtO2QW6+qdMSNif28i7srjlLkU8hOFPlSajnho6bpJ/VQS
 +eVHrRfreEWcIK7CNCo86g+Tu7QiP828mzAi1NSN5NrFpRiqzzvCWGhBnV5G2ImkwaTebDTT/drCV
 oGKLouAA010bN+wM=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rO8O1-0001l4-I1 for jfs-discussion@lists.sourceforge.net;
 Fri, 12 Jan 2024 03:39:14 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-7bef5e512b6so235661939f.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 11 Jan 2024 19:39:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705030743; x=1705635543;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=xsULNSwGIqV6VUSGukBMzcLGajKxNSaJ734615aHwHA=;
 b=Sp/FLSTZg1ddgeDF8VHqKmIbnoRvONzjNmRiP0JLIfj1FU68UpJrAZkK1EfctcCgtN
 MP4ir/CuLiSgrBRFqfh0S6/vmXcX7uIFzItTWscyYYh9qgP3hS6saA9DYmNt85V3i/CD
 6xFHZuXsmP2sYyyw+6SKq2ES3lDTzKJwn6A4HtCjlHr3P1N6ix1SW+n+9DsM1GXMjTso
 0gqEJ9hVBPnUBnDnPzdKOIPh61/VmB28qNfNqUeWbc1ZjFM1/Wl7nbD6VdMTiZyVooTU
 BqJLVvOxqUeCpxf56KU5fJZAROWGZ7fzIRorKNm34JS+fTQenETe06gkwod7HpCzjcd2
 Avxw==
X-Gm-Message-State: AOJu0Yzdew1Hl2tbPLeGoMOvQtsn4sIlDEpQN0YdkZtu6NW6Yn2DNxtX
 cYctlYUAfR4Oh7iMHX+AqWcDK0RSgcsEyffwuFGIISYKrCVC
X-Google-Smtp-Source: AGHT+IFGqlpsi8dlH+HvtsYNFd8ARrOfbhWwGMTrVn2p9Ud5mrQRWT6kM7YT+oCmAt1Ng0h+W+FtJ+N/1VkAem0GQDq7T9nGEFaW
MIME-Version: 1.0
X-Received: by 2002:a05:6638:304a:b0:46e:50ab:6a54 with SMTP id
 u10-20020a056638304a00b0046e50ab6a54mr43374jak.1.1705030743535; Thu, 11 Jan
 2024 19:39:03 -0800 (PST)
Date: Thu, 11 Jan 2024 19:39:03 -0800
In-Reply-To: <000000000000ff4a1505e9f961a2@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ccb6c6060eb767bd@google.com>
To: axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, 
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rO8O1-0001l4-I1
X-Mailman-Approved-At: Fri, 12 Jan 2024 16:28:46 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] general protection fault in
 dtSplitUp
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
Reply-To: syzbot <syzbot+172bdd582e5d63486948@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1268fc69e80000
start commit:   a70385240892 Merge tag 'perf_urgent_for_v6.1_rc2' of git:/..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=ea03ca45176080bc
dashboard link: https://syzkaller.appspot.com/bug?extid=172bdd582e5d63486948
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15692dba880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15017b2c880000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
