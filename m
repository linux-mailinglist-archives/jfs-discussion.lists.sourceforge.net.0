Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE3F83CA5A
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Jan 2024 18:54:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rT3vl-00048N-FX;
	Thu, 25 Jan 2024 17:54:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1rT3vk-00048H-27
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Jan 2024 17:54:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oXHpAvGT0l+OrcMVhCzIisM9di93nFyOAmu8umEvyYc=; b=T3FtX7skh2VK2KyMxvfQKpsQUU
 elkvQzCS/sF62RZt389jram7EtXq1YAs9koa3wnGu2b593FwM6kzZn8yx8D1XM6g5TK6oFR1RQCVi
 gSceF/bzvHPH0U4ZKWvlbgMUl5BoQmaSfV00aAP7346octRUvUNsqih2XRu+whUJlLPE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:
 Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oXHpAvGT0l+OrcMVhCzIisM9di93nFyOAmu8umEvyYc=; b=jXYzxnpw6QOgXqNq2QKNPMWL5n
 0VOWUd9GUXdchVPifBOYfI9VoxUfOizspiYIYLgCtXL4HRFJudUIJ7ey14fjeaXLJaiPIs8H6mZfi
 9pTWKQklnFCMECLtxKdjqZ4iEPiFRI4oWP/3Y0MPpPYixX4e4Z8FZort9eyCvdZqXZiE=;
Received: from mail-qt1-f179.google.com ([209.85.160.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rT3vj-0001GP-7I for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Jan 2024 17:54:24 +0000
Received: by mail-qt1-f179.google.com with SMTP id
 d75a77b69052e-4298761b728so9803561cf.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 25 Jan 2024 09:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1706205253; x=1706810053;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=oXHpAvGT0l+OrcMVhCzIisM9di93nFyOAmu8umEvyYc=;
 b=iXHk+OKW6zbyS5PK3m9XAn5lmYFdKXbjm3Q1cwSA1A8JVMDPRSY8SsGCbESIiEJQ1A
 cvrdaFebE9HOIqgkuHANY3paLuzAxaid466Ld3pzqC+lRobaLK9Lw2E+1f3N1i2DG2ti
 tlbf+qv2xDniZZnlRw7Tq/Xbn9YW4Y/SGWGANmE0v3wzrYRDP31V7CyoMv/ibfopmHpH
 fxrfsF3R1kjwho7FTE5TxyU6g1UVyC6oBP2FJWAW9h+bWFFBb5kQiCscdrgKc19vy0z1
 RmyiX9GB5wqSckSs74vrohdQgG3uIig4jZgKkW403ETrRk5xilofWJ0T3RxpCuhVLS2b
 xkhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706205253; x=1706810053;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:from:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oXHpAvGT0l+OrcMVhCzIisM9di93nFyOAmu8umEvyYc=;
 b=cnxd7xE6LzWbSlv6SSaSxflEsl5tVWGf+hH7+gP7IuxZuji1KTf+qo18VEjbgpNJ9U
 Mts3lPo+fk8MH9nIPTIf90BynrS9cjA13d/j+4MS2Wp+SRtk8Bw1aT1cf508RqqTlATC
 ebe3FQ7z8NsBCv/lBWgTq1z8j36DuREX8EOqH1pnMZlu3u0lk8MSH+y+ZveBIprob03p
 GFBJ9ckruJoOx/jIhqBOFHC1fdvXp1A7+iEw3ouzCIt9K2uHPpHglxc3fW6T1ASOwa15
 uO5L9m+k1GCQad7eGIQ/MEFhivm4mh3jTS0g7wYCEix29nTwmFMjsWtt+vnCWXP/s4Vv
 /5Cw==
X-Gm-Message-State: AOJu0YxRZCWtEvZDxTsIujk8TSqEiUqrA0iMAV2+i2Ciq/a+z1Xd2TIl
 u76IeD85929HmeqTg84dwV5HbJdiOWIFWuZHbaHVE++olDhrNt40+MJti9lJ9oqu0MX9C6VMzFY
 qnS8=
X-Google-Smtp-Source: AGHT+IEK/ThZ75X0mSLf5JYVYvXq2E1lW6GL1EM0E56z9MRc0RzZ+JHgPgmxc0oiVIA9uU/EKwDlBA==
X-Received: by 2002:a5e:9205:0:b0:7bc:207d:5178 with SMTP id
 y5-20020a5e9205000000b007bc207d5178mr2457404iop.2.1706199095804; 
 Thu, 25 Jan 2024 08:11:35 -0800 (PST)
Received: from [192.168.1.116] ([96.43.243.2])
 by smtp.gmail.com with ESMTPSA id
 b18-20020a0566380b9200b0046cf80c799fsm4619524jad.120.2024.01.25.08.11.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Jan 2024 08:11:35 -0800 (PST)
Message-ID: <11868eb4-0528-4298-b8bc-2621fd1aac83@kernel.dk>
Date: Thu, 25 Jan 2024 09:11:34 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jens Axboe <axboe@kernel.dk>
To: Christian Brauner <brauner@kernel.org>
References: <00000000000083513f060340d472@google.com>
 <000000000000e5e71a060fc3e747@google.com>
 <20240125-legten-zugleich-21a988d80b45@brauner>
Content-Language: en-US
In-Reply-To: <20240125-legten-zugleich-21a988d80b45@brauner>
X-Spam-Score: 2.5 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 25,
 2024 at 9:08?AM Christian Brauner <brauner@kernel.org>
 wrote: > > On Thu, Jan 25, 2024 at 03:59:03AM -0800, syzbot wrote: > > syzbot
 suspects this issue was fixed by commit: > > > > co [...] 
 Content analysis details:   (2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.179 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.179 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rT3vj-0001GP-7I
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in path_mount
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
Cc: shaggy@kernel.org, hdanton@sina.com, jack@suse.cz,
 syzkaller-bugs@googlegroups.com,
 syzbot <syzbot+fb337a5ea8454f5f1e3f@syzkaller.appspotmail.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Jan 25, 2024 at 9:08?AM Christian Brauner <brauner@kernel.org> wrote:
>
> On Thu, Jan 25, 2024 at 03:59:03AM -0800, syzbot wrote:
> > syzbot suspects this issue was fixed by commit:
> >
> > commit 6f861765464f43a71462d52026fbddfc858239a5
> > Author: Jan Kara <jack@suse.cz>
> > Date:   Wed Nov 1 17:43:10 2023 +0000
> >
> >     fs: Block writes to mounted block devices
> >
> > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13175a53e80000
> > start commit:   2ccdd1b13c59 Linux 6.5-rc6
> > git tree:       upstream
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=9c37cc0e4fcc5f8d
> > dashboard link: https://syzkaller.appspot.com/bug?extid=fb337a5ea8454f5f1e3f
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17ba5d53a80000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14265373a80000
> >
> > If the result looks correct, please mark the issue as fixed by replying with:
>
> #syz fix: fs: Block writes to mounted block devices

Like Dave replied a few days ago, I'm kind of skeptical on all of these
bugs being closed by this change. I'm guessing that they are all
resolved now because a) the block writes while mounted option was set to
Y, and b) the actual bug is just masked by that.

Maybe this is fine, but it does seem a bit... sketchy? The bugs aren't
really fixed, and what happens if someone doesn't turn on that option?
If it's required, perhaps it should not be an option at all? Though
that'd seem to be likely to break some funky use cases, whether they are
valid or not.

-- 
Jens Axboe



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
