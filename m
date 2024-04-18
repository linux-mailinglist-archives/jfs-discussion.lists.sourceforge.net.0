Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9865F8A9BE0
	for <lists+jfs-discussion@lfdr.de>; Thu, 18 Apr 2024 15:58:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rxSGv-0001u7-KR;
	Thu, 18 Apr 2024 13:57:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3z8ogZgkbACAOUVG6HHAN6LLE9.CKKCHAQOAN8KJPAJP.8KI@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rxM8w-0005DJ-Lv for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Apr 2024 07:25:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=emqYNM6uPXqfGXvH8IFE1wN5OYo8rRqGNB03LA9Oayo=; b=aWIaOR6h/5eyU+kZF02seQfa9I
 Mb7OLlbfTIp0JtEeFmpxgFfYq176YvG0lOXo7W5YN1FWq/OUFl9rcXREBxk2lANBsIaKxIclpV4A4
 QpuvuTDeJtPv3vWGMntrCUiJMUbSUzAYoPLiRWuZnVErQ6kfM1ZyHVWwmLUgO72kFWtc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=emqYNM6uPXqfGXvH8IFE1wN5OYo8rRqGNB03LA9Oayo=; b=m
 B78uj4Mtipf6qkgM74ErDdC3bsqYeRiJ2xjjy3eoUO1qJ6eh827Zc0BQnqzl+KkYbSLCAYkTAgqat
 2ZZIFLcKyk9gJJRUhKkx+dzgVXuwoFDwPNuF5cTsZ821ybX6ExjLqyxcXdwKB+zwSlfgzO54NVG44
 33oiwYQ06x2JYsyA=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rxM8w-0001zC-90 for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Apr 2024 07:25:14 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-7da1e2fc445so56272439f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 18 Apr 2024 00:25:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713425103; x=1714029903;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=emqYNM6uPXqfGXvH8IFE1wN5OYo8rRqGNB03LA9Oayo=;
 b=bK8adlYX9W1oro1MDLSKi/9+/A5HRemiH/EkRgQhxhKbqTAZhVaA7fv1ghAse48h6U
 R7uK3C3ws4lYsdzWGbctFPw3QDfvgnaJ0e2QNjAcPSTWhT4eSoidWnqMtSe3mw7Y2nwb
 581XHa3E2rYRIG/lQkB7lrT9E595MwqlizLmlxbvVqfpzkPKTkG79W5JE2VtOpr5iWCp
 LJQLjLcrl/zH7asuxAeqce/g/xEDnaums6OOKdB/nXuxUCpiNzOr28wJbEYJE+v9itzc
 sBXjue7L0cK/aOQvmYXSDtBqsJu/MenB8eMulgB3tGogoqOqxI7r9FjNtSqpI+9BIR4k
 S/3w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWfMdOEV1fxFsnE7OvdeCyEE/+4pDy2JRYKlZH+ZkUOvQq/cCNii7TfVQt/EAIk2OmGtf/cpirmbzg2rHia6tCJMFD4sXTd4+obfFtC6yMnIsxeDN8=
X-Gm-Message-State: AOJu0YyQ1rLHMB8CE3Mo2ypvOzJHhYD1zij78s6i0XMidV7TWEmtmap0
 GOXhCwQKosT7ACaFhP6/AQyDjeLoo5BRavRvQRj8gKFSCLTQDOYINKSO7DDOPD6zNK8JTEiTtbp
 SnSCCMmQLhR6cSMSAM/HEOZ4fNPbXZ6fqb35o5DIGh6+jITt1koNNlXI=
X-Google-Smtp-Source: AGHT+IGF7JBT1SXcfdi6VGIsYxKj6xCHnV9Ax77U49+mdHX7Gx1j4+mnLdCI3KvBBHJuH4ka95TKOzduhybc14CQuB94/6DNyKVL
MIME-Version: 1.0
X-Received: by 2002:a05:6638:22d4:b0:482:fa29:27fa with SMTP id
 j20-20020a05663822d400b00482fa2927famr103840jat.1.1713425103510; Thu, 18 Apr
 2024 00:25:03 -0700 (PDT)
Date: Thu, 18 Apr 2024 00:25:03 -0700
In-Reply-To: <000000000000e21aa80604153281@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000a4f241061659def0@google.com>
To: axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, 
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.1 (+++)
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
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: goo.gl]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
X-Headers-End: 1rxM8w-0001zC-90
X-Mailman-Approved-At: Thu, 18 Apr 2024 13:57:52 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in
 jfs_commit_inode (2)
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
Reply-To: syzbot <syzbot+9157524e62303fd7b21c@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=155eb8f7180000
start commit:   4f9e7fabf864 Merge tag 'trace-v6.5-rc6' of git://git.kerne..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=1b32f62c755c3a9c
dashboard link: https://syzkaller.appspot.com/bug?extid=9157524e62303fd7b21c
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=101aff5ba80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14d78db0680000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
