Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 109CA8B21D0
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Apr 2024 14:45:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rzySy-0001UG-Ma;
	Thu, 25 Apr 2024 12:44:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aha310510@gmail.com>) id 1rzySx-0001U7-Uj
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 12:44:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MalHbcVbUfmTUH0arqKUh9jYIczTB1JUg4En9dYKyBY=; b=Lf3Sd6KUfppj2OdlQeNFexTVri
 8eeD11nNvT2phzfzpt1fdMvyTr9m4PIj1oKDbJf2POU/Hx23hqMNxEnOOTUS5yqmdH23yBLXVwo7P
 ZgUzVfSWP2bBK7rq4uz8R9vnlUHs1WoE4o+hqlooMZVzPIDedU+hm0ANOvc84X5dapqo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MalHbcVbUfmTUH0arqKUh9jYIczTB1JUg4En9dYKyBY=; b=hxNHO14SW10FeBqVfGvKmY/G+j
 4HqyYDBqajwazAjNFKo94uNIUEht+d9QGoEB4MNmC7NO52kUBUY3DdeUAfKG8MQxrg5Hw/azP1WX9
 8XB7HolRmmFoQu6lZzRbTuysneUXo6wQqrBFzcPXK4CZypLM0HjilzfDAcCVb0zoNTC0=;
Received: from mail-pl1-f177.google.com ([209.85.214.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rzySx-0001fH-Jt for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 12:44:44 +0000
Received: by mail-pl1-f177.google.com with SMTP id
 d9443c01a7336-1e65a1370b7so8347365ad.3
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 25 Apr 2024 05:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1714049078; x=1714653878; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MalHbcVbUfmTUH0arqKUh9jYIczTB1JUg4En9dYKyBY=;
 b=EQ1B1ipZC3uccO3z1jXK9VTDWUal0QyWPsOAcmSN1zbGTrh/qxdWBlb34tViTpfWf3
 mutT3a3GEyYRdQWhuc5m9ySPmbT4hB/bcSQzYm/ZUXHp1x+o3aR6/KBjBQTDg2dPZ38h
 Ypty2ZUkfS+DmaAfQRCAVzVBS7ELgwEU1sUDWlKaIyolp33jZXjNfU0pTqsOs/HnUUVl
 sdVub0oMcT5R125dQ5v+OWEB7rf6MKk1PFMIlD62VyugJKQaRVyo3vzEhZhI90wrN2Oi
 ibkhcV4wRxycsFJWL26vQIiQ07JXob/SpDNtYtK6Dmz/Lir8duBgZTR7CWiNAE18GcQ0
 QWQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714049078; x=1714653878;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MalHbcVbUfmTUH0arqKUh9jYIczTB1JUg4En9dYKyBY=;
 b=DU0XPGgT8CVTzO7VZhoGA8q4MgGh8eEXJhxuzGhTOYAKjRl3wgFTHXBubVhrNdXAkW
 dYdmYK7Fby/LE3nMNDsv2OwZktu4xcOB3J4nykE4xf4t8UOUg0pAO2/pAqg+d6mfF9TI
 K/icQN/E6EyAfCDVDA6Z1+VvYG2Gl4cXpxvVNy92Ds0o3cymiOPh/DHyTQsldoCwlN1j
 3qJk8BxvpLwi4+ttTCAUoiM+LNUPyRpyCc65EHSuIaE2NCCuFml2pvn+2Th7U25Nlgf7
 LcTX4r9wNvH/1eanxnyokNeErYLFbqCYqKkA2YglOFe8QsUkYeNLGGIkyXUNxfj5tqiT
 lS3g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVrt8EeoGY9n22d0VbEPCdHShDS644mfJkluEQfe/pcL2gIMYEWeVBGVOSQ7DYl4t9/d2K+VzvCRKevIUO6XqKPvOeYXxfKNXCD1pnHFzKku1WGjVs=
X-Gm-Message-State: AOJu0YyNMZvxYYnxp7zq80LA4Dzi3Zas6uLbz5yv4hXrNlqCUZ1EyL9s
 TLWcawJs5hq/0rXbZeExQ+gwLQaxuVaRCPmTsy4bA49vd/uaSBSg
X-Google-Smtp-Source: AGHT+IEV89JFrGdCIKZuaZ+h7prUWBOrjo8scUe7kVO+/QAJGWHP/yrfhyn39CzjnH5C30AVI/6hmA==
X-Received: by 2002:a17:903:284:b0:1e0:dc6e:45d6 with SMTP id
 j4-20020a170903028400b001e0dc6e45d6mr7878661plr.60.1714049078305; 
 Thu, 25 Apr 2024 05:44:38 -0700 (PDT)
Received: from kernelexploit-virtual-machine.localdomain ([121.185.186.233])
 by smtp.gmail.com with ESMTPSA id
 b3-20020a170902650300b001ea2838fa5dsm4920064plk.76.2024.04.25.05.44.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Apr 2024 05:44:38 -0700 (PDT)
To: willy@infradead.org
Date: Thu, 25 Apr 2024 21:44:33 +0900
Message-Id: <20240425124433.28645-1-aha310510@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <ZilEXC3qLiqMTs29@casper.infradead.org>
References: <ZilEXC3qLiqMTs29@casper.infradead.org>
MIME-Version: 1.0
X-Spam-Score: -4.9 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Through direct testing and debugging, I've determined that
 this vulnerability occurs when mounting an incorrect image, leading to the
 potential passing of an excessively large value to 'sbi->bmap->db_ [...] 
 Content analysis details:   (-4.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.214.177 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aha310510[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aha310510[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.177 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rzySx-0001fH-Jt
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix array-index-out-of-bounds in
 diFree
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
From: Jeongjun Park via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Jeongjun Park <aha310510@gmail.com>
Cc: shaggy@kernel.org, brauner@kernel.org, eadavis@qq.com, jlayton@kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, linux-fsdevel@vger.kernel.org,
 syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Through direct testing and debugging, I've determined that this 
vulnerability occurs when mounting an incorrect image, leading to 
the potential passing of an excessively large value to 
'sbi->bmap->db_agl2size'. Importantly, there have been no instances 
of memory corruption observed within 'sbi->bmap->db_agl2size'. 

Therefore, I think implementing a patch that terminates the 
function in cases where an invalid value is detected.

Thanks.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
