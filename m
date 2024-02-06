Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBB084B85D
	for <lists+jfs-discussion@lfdr.de>; Tue,  6 Feb 2024 15:50:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rXMmC-0003Tb-Py;
	Tue, 06 Feb 2024 14:50:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <34UbCZQkbAKweklWMXXQdMbbUP.SaaSXQgeQdOaZfQZf.OaY@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rXMlB-0007pi-KS for jfs-discussion@lists.sourceforge.net;
 Tue, 06 Feb 2024 14:49:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kSrsdZ/RuKV0gEG27LOO5dIr8YmZtFDZ3FYa41rVAQo=; b=bec9N912EdzGFVjQVFkTrg3bfR
 r5HoDET1DnDxqH+tJxdLrgILThADkKANon/UuFPtsVsQEJcn0RV1iOTZlqV5EDCK42GyIXfIzWrhV
 RV/lmOigxhQaJ0ji0EeoJIcNGFMGvM+MTjPvDMG7LUJAzm9XVqkX1VsIchnrNHIC4XoY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kSrsdZ/RuKV0gEG27LOO5dIr8YmZtFDZ3FYa41rVAQo=; b=h
 UTV8yvZHf9ayStlDOROSgM/rl40+lnr9GnMq2zrDZaXi0zqg4I6YhTYqA7DtMVSeCX5jIWcrgD0TG
 G0JW2rCKESUNFbXf1vk3oynWxh9I5D8mDBAMBk0cQmTN77zhrEt7w4YEgkU1R/voqla5+KVNosqOw
 +PPu3ZS61IagH/f8=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rXMl9-0003B9-Rp for jfs-discussion@lists.sourceforge.net;
 Tue, 06 Feb 2024 14:49:18 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-7bff2d672a5so389226839f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 06 Feb 2024 06:49:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707230946; x=1707835746;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kSrsdZ/RuKV0gEG27LOO5dIr8YmZtFDZ3FYa41rVAQo=;
 b=atxN0iP6HZ/X2Fr8tw22Vrltf9iL1GEbnrdk3Wq1t18jn8jxPnye1ijghPbxy41xa3
 D4nh9hoNOsHHkhxMQ2uGVHfuKf7U7Y3s2ITQy8P57MuamA5jXLyvP+7+C7uX3v+siXTg
 sIwm6H08jQ6gNROUDQUZGrV4ksB/8pnKVU3d4IqWdL1QPbHAZVOjAo5N3ITKqZbf3hgk
 Na0wJjGCi4EgRqDc9tundTf6qzjnZQugYVxJ3moUPGeo+L01CYTPMskIcMbNGN5om8S3
 hVRGb5bmVGWBai1iOFZ7xG0xszLH85oMQQY2Q35el6CUfp9/axQQ2LDY+kmZtgOMfxfA
 0yLw==
X-Gm-Message-State: AOJu0YwhNovDkx5W/JxGsYsATDQyc7w0mDXtyo0z8bTn41V3PKh2G3YM
 iVsA4pPwUfHv3wNNNE7MBfLC6JeTDinSRxTMXZbnR5HJiNZsJa9TK8FReufFpzBTsXSeT5D/h6h
 HkzlCBz3BHAtHLw5vIsM/Dlq/MM42edunOotiqSPr0WSecSjTNJgiPMM=
X-Google-Smtp-Source: AGHT+IGyJ27bMyWH8/GynoFXTjuNU5g+uu1OXbn98nBQ0bYYkpj0BC/KPVZdYE7KwK+zDcXtX/Ot0QVWkk9m9WuMvI7pjKLzBruq
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:154d:b0:363:a059:670b with SMTP id
 j13-20020a056e02154d00b00363a059670bmr186965ilu.4.1707230945919; Tue, 06 Feb
 2024 06:49:05 -0800 (PST)
Date: Tue, 06 Feb 2024 06:49:05 -0800
In-Reply-To: <000000000000332a2505e981f474@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000014c9ca0610b7aec6@google.com>
To: axboe@kernel.dk, brauner@kernel.org, dan.carpenter@linaro.org, 
 dave.kleikamp@oracle.com, ghandatmanas@gmail.com, jack@suse.cz, 
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org, 
 lkp@intel.com, llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, 
 oe-kbuild@lists.linux.dev, shaggy@kernel.org, syzkaller-bugs@googlegroups.com, 
 syzkaller@googlegroups.com
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rXMl9-0003B9-Rp
X-Mailman-Approved-At: Tue, 06 Feb 2024 14:50:18 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-out-of-bounds Read
 in dtSearch
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
Reply-To: syzbot <syzbot+9924e2a08d9ba0fd4ce2@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13767e8fe80000
start commit:   bee0e7762ad2 Merge tag 'for-linus-iommufd' of git://git.ke..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=b45dfd882e46ec91
dashboard link: https://syzkaller.appspot.com/bug?extid=9924e2a08d9ba0fd4ce2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=152bfc22e80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1608f4a2e80000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
